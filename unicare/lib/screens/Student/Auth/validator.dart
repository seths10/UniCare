String? validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern as String);
  if (!regex.hasMatch(value.trim())) {
    return 'Email is invalid Please enter an email eg:test@email.com';
  } else {
    return null;
  }
}

String? validatepassword(String val) {
  if (val.isEmpty) {
    return 'Field cannot be empty';
  } else if (val.length < 6) {
    return 'Enter a strong Password with at least 6 characters';
  } else if (val.contains(RegExp(r'[A-Z]')) &&
      val.contains(RegExp(r'[a-z]')) &&
      val.contains(RegExp(r'[0-9]'))) {
    return null;
  } else {
    return 'Password must contain at least an Uppercase,Lowercase and a number';
  }
}

String? validateindexnum(String val) {
  if (val.isEmpty) {
    return 'Field cannot be empty';
  } else if (val.length < 6 ) {
    return 'Index number should be more than 6 characters';
  }else if ( val.length > 15) {
    return 'Index number should be less than 15 characters';
  }else if (val.contains(RegExp(r'/'))) {
    return null;
  } else if ((val.contains(RegExp(r'[A-Z]')) ||
          val.contains(RegExp(r'[a-z]'))) &&
      val.contains(RegExp(r'[0-9]'))) {
    return null;
  } else {
    return 'Index num must contain at least an alphabet and a number';
  }
}


