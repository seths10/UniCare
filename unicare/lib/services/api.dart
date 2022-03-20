class Api {
  static Api _instance = Api._internal();
  Api._internal() {
    _instance = this;
  }
  factory Api() => _instance;
}
