// // ignore_for_file: unnecessary_const

// import 'package:flutter/material.dart';
// import 'package:unicare/utils/colors.dart';
// import 'package:unicare/utils/constants.dart';

// import 'components/body.dart';

// class Chat extends StatelessWidget {
//   const Chat({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(),
//       body: const Body(),
//     );
//   }

//   AppBar buildAppBar() {
//     return AppBar(
//       automaticallyImplyLeading: false,
//       backgroundColor: Colors.white,
//       elevation: 0,
//       title: Row(
//         children: [
//           const BackButton(
//             color: Colors.black,
//           ),
//           const CircleAvatar(
//             backgroundImage: AssetImage("assets/images/avatar.png"),
//           ),
//           const SizedBox(width: defaultPadding * 0.75),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Text(
//                 "Felicity Smoke",
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.black,
//                 ),
//               ),
//               Text(
//                 "Last Seen 12:43",
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Colors.black,
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//       bottom: PreferredSize(
//           child: Container(
//             color: Colors.grey,
//             height: 1.0,
//           ),
//           preferredSize: Size.fromHeight(1.0)),
//       actions: [
//         IconButton(
//           icon: const Icon(
//             Icons.videocam,
//             color: Colors.black,
//           ),
//           onPressed: () {},
//         ),
//         const SizedBox(width: defaultPadding / 2),
//       ],
//     );
//   }
// }
