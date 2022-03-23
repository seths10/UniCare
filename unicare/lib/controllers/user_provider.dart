import 'package:flutter/foundation.dart';
import 'package:unicare/models/user.dart';

class UserProvider extends ChangeNotifier {
  // UserProvider({required this.user});
  static UserProvider _instance = UserProvider._internal();
  UserProvider._internal() {
    _instance = this;
  }
  factory UserProvider() => _instance;

  User user = User(email: "", id: "", name: "", token: "");

  void setUser(User user) {
    user = user;
    print(user);
    print(user.token);
    notifyListeners();
  }
}
