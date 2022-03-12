// // ignore_for_file: file_names

// import 'package:flutter/material.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:flutter_svg/svg.dart';
// import '../../../utils/colors.dart';

// class SignIn extends StatefulWidget {
//   const SignIn({Key? key}) : super(key: key);

//   @override
//   _SignInState createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   final _formkey = GlobalKey<FormBuilderState>();
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           centerTitle: true,
//           title: const Text(
//             'Sign in',
//             style: TextStyle(
//                 color: AppColors.textColor, fontWeight: FontWeight.bold),
//           ),
//           leading: IconButton(
//             icon: const Icon(Icons.arrow_back_ios),
//             color: Colors.grey,
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: FormBuilder(
//               key: _formkey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Welcome back,\nyou have been missed',
//                     style: TextStyle(
//                         color: AppColors.textColor,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20),
//                   ),
//                   const Text(
//                     "Let's get you signed in",
//                     style: TextStyle(
//                         color: AppColors.subTextColor,
//                         fontWeight: FontWeight.w200,
//                         fontSize: 20),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const Text(
//                     'Username',
//                     style: TextStyle(
//                         color: AppColors.textColor,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16),
//                   ),
//                   Container(
//                     height: 60,
//                     width: MediaQuery.of(context).size.width * 0.9,
//                     padding:
//                         const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey, width: 1),
//                         borderRadius: BorderRadius.circular(10)),
//                     child: FormBuilderTextField(
//                       name: 'username',
//                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                       validator: FormBuilderValidators.required(context,
//                           errorText: "Username is required"),
//                       decoration: const InputDecoration(
//                         border: InputBorder.none,
//                         hintText: "",
//                       ),
//                     ),
//                   ),
//                   const Text(
//                     'Password',
//                     style: TextStyle(
//                         color: AppColors.textColor,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16),
//                   ),
//                   Container(
//                     height: 60,
//                     width: MediaQuery.of(context).size.width * 0.9,
//                     padding:
//                         const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey, width: 1),
//                         borderRadius: BorderRadius.circular(10)),
//                     child: FormBuilderTextField(
//                       name: 'password',
//                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                       validator: FormBuilderValidators.required(context,
//                           errorText: "Password is required"),
//                       decoration: const InputDecoration(
//                         border: InputBorder.none,
//                         hintText: "",
//                       ),
//                     ),
//                   ),
//                   const Text(
//                     'Forgot password?',
//                     style: TextStyle(
//                         color: AppColors.secondaryColor1,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 5),
//                     child: GestureDetector(
//                       onTap: () {
//                         _formkey.currentState!.validate();
//                       },
//                       child: Container(
//                           height: 45,
//                           decoration: BoxDecoration(
//                             color: AppColors.secondaryColor1,
//                             borderRadius: BorderRadius.circular(5),
//                           ),
//                           child: const Text(
//                             "Sign in",
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w400,
//                               color: Colors.white,
//                             ),
//                           )),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 5),
//                     child: Container(
//                       height: 45,
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(5),
//                           border: Border.all(
//                               color: AppColors.subTextColor, width: 0.5)),
//                       child: Row(
//                         children: [
//                           const Spacer(),
//                           Padding(
//                             padding: const EdgeInsets.only(right: 10),
//                             child: SvgPicture.asset(
//                               "assets/images/google.svg",
//                               fit: BoxFit.contain,
//                               height: 20,
//                               width: 20,
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 5,
//                           ),
//                           const Text(
//                             "Continue with Google",
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w400,
//                               color: AppColors.textColor,
//                             ),
//                           ),
//                           const Spacer(),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 50,
//                   ),
//                   Row(
//                     children: const [
//                       Text(
//                         "Don't have an account?",
//                         style: TextStyle(
//                             color: AppColors.textColor,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16),
//                       ),
//                       Text(
//                         "Create one",
//                         style: TextStyle(
//                             color: AppColors.secondaryColor1,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
