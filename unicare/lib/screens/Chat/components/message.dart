// This is the emplementation for the text message screen
// Currently there is an overflow issue to be solved later.


// import 'package:flutter/material.dart';
// import 'package:unicare/models/ChatMessage.dart';
// import 'package:unicare/utils/colors.dart';
// import 'package:unicare/utils/constants.dart';
// import 'audio_message.dart';
// import 'text_message.dart';
// import 'video_message.dart';

// class Message extends StatelessWidget {
//   const Message({
//     Key? key,
//     required this.message,
//   }) : super(key: key);

//   final ChatMessage message;

//   @override
//   Widget build(BuildContext context) {
//     Widget messageContaint(ChatMessage message) {
//       switch (message.messageType) {
//         case ChatMessageType.text:
//           return TextMessage(message: message);
//         case ChatMessageType.audio:
//           return AudioMessage(message: message);
//         case ChatMessageType.video:
//           return const VideoMessage();
//         default:
//           return const SizedBox();
//       }
//     }

//     return Padding(
//       padding: const EdgeInsets.only(top: defaultPadding),
//       child: Row(
//         mainAxisAlignment:
//             message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
//         children: [
//           if (!message.isSender) ...[
//             const CircleAvatar(
//               radius: 12,
//               backgroundImage: AssetImage("assets/images/avatar.png"),
//             ),
//             const SizedBox(width: defaultPadding / 2),
//           ],
//           messageContaint(message),
//           if (message.isSender) MessageStatusDot(status: message.messageStatus)
//         ],
//       ),
//     );
//   }
// }

// class MessageStatusDot extends StatelessWidget {
//   final MessageStatus? status;

//   const MessageStatusDot({Key? key, this.status}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     Color dotColor(MessageStatus status) {
//       switch (status) {
//         case MessageStatus.not_sent:
//           return AppColors.errorColor;
//         case MessageStatus.not_view:
//           return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
//         case MessageStatus.viewed:
//           return AppColors.primaryColor;
//         default:
//           return Colors.transparent;
//       }
//     }

//     return Container(
//       margin: const EdgeInsets.only(left: defaultPadding / 2),
//       height: 12,
//       width: 12,
//       decoration: BoxDecoration(
//         color: dotColor(status!),
//         shape: BoxShape.circle,
//       ),
//       child: Icon(
//         status == MessageStatus.not_sent ? Icons.close : Icons.done,
//         size: 8,
//         color: Theme.of(context).scaffoldBackgroundColor,
//       ),
//     );
//   }
// }
