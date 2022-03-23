class User {
  User(
      {required this.token,
      required this.id,
      required this.name,
      required this.email,
      this.image = "",
      this.indexNum = ""});

  String token, name, email, id;
  String? image;
  String? indexNum;
}
