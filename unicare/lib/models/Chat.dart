// ignore_for_file: file_names

class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatsData = [
  Chat(
    name: "Patrick Danso",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/avatar-1.png",
    time: "3m ago",
    isActive: false,
  ),
  Chat(
    name: "Philip Abakah",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/images/avatar-1.png",
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "Ibrahim Karl",
    lastMessage: "Do you have update...",
    image: "assets/images/avatar-1.png",
    time: "5d ago",
    isActive: false,
  ),
  Chat(
    name: "Klopp",
    lastMessage: "You’re welcome :)",
    image: "assets/images/avatar-1.png",
    time: "5d ago",
    isActive: true,
  ),
  Chat(
    name: "Albert",
    lastMessage: "Thanks",
    image: "assets/images/avatar-1.png",
    time: "6d ago",
    isActive: false,
  ),
  Chat(
    name: "Wilson",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/avatar-1.png",
    time: "3m ago",
    isActive: false,
  ),
  Chat(
    name: "Esther",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/images/avatar-1.png",
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "Seth Addo",
    lastMessage: "Do you have update...",
    image: "assets/images/avatar-1.png",
    time: "5d ago",
    isActive: false,
  ),
];
