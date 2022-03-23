import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:unicare/controllers/user_provider.dart';
import 'package:unicare/models/user.dart' as UserModel;

class FbAuth {
  FirebaseAuth auth = FirebaseAuth.instance;
  final userProvider = UserProvider();

  listen() {
    auth.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  tokenChanges() {
    auth.idTokenChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  signUp(String email, String password, String name, String indexNum) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await userCredential.user?.updateDisplayName(name);
      await sendEmailVerification();
      String? token = await auth.currentUser?.getIdToken();
      userProvider.setUser(UserModel.User(
          token: token ?? "",
          id: userCredential.user?.uid ?? "",
          name: name,
          email: userCredential.user?.email ?? "",
          image: userCredential.user?.photoURL ?? "",
          indexNum: indexNum));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('An account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  signIn(String email, String password) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      String? token = await auth.currentUser?.getIdToken();
      userProvider.setUser(UserModel.User(
        token: token ?? "",
        id: userCredential.user?.uid ?? "",
        name: userCredential.user?.displayName ?? "",
        email: userCredential.user?.email ?? "",
        image: userCredential.user?.photoURL ?? "",
        // indexNum: indexNum
      ));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  sendEmailVerification() async {
    User? user = auth.currentUser;

    if (user != null && !user.emailVerified) {
      await user.sendEmailVerification();
    }
  }

  signOut() async {
    await auth.signOut();
  }

  deleteAccount() async {
    try {
      await auth.currentUser!.delete();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'requires-recent-login') {
        print(
            'The user must reauthenticate before this operation can be executed.');
      }
    }
  }
}
