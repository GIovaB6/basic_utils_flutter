
/// Checks if string consist only Alphabet. (No Whitespace)
bool isText(
    String? inputString, {
      bool isRequired = false,
    }) {
  bool isInputStringValid = false;

  if (!isRequired && (inputString == null ? true : inputString.isEmpty)) {
    isInputStringValid = true;
  }

  if (inputString != null && inputString.isNotEmpty) {
    const pattern = r'^[a-zA-Z]+$';

    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}

/// Checks if string is email.
bool isValidEmail(
    String? inputString, {
      bool isRequired = false,
    }) {
  bool isInputStringValid = false;

  if (!isRequired && (inputString == null ? true : inputString.isEmpty)) {
    isInputStringValid = true;
  }

  if (inputString != null && inputString.isNotEmpty) {
    const pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}

/// Password should have,
/// at least a upper case letter
///  at least a lower case letter
///  at least a digit
///  at least a special character [@#$%^&+=]
///  length of at least 4
/// no white space allowed
bool isValidPassword(
    String? inputString, {
      bool isRequired = false,
    }) {
  bool isInputStringValid = false;

  if (!isRequired && (inputString == null ? true : inputString.isEmpty)) {
    isInputStringValid = true;
  }

  if (inputString != null && inputString.isNotEmpty) {
    const pattern =
        r'^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$';

    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}

/**
 * Validator functions
 */

String? validateEmail(String? email) {
  if (email == null || email.isEmpty) {
    return "lbl_email_required";
  } else if (!email.contains('@')) {
    return "lbl_email_must_contain_at";
  } else if (!email.contains('.')) {
    return "lbl_email_must_contain_dot";
  }
  return null;
}

String? validatePassword(String? password) {
  if (password == null || password.isEmpty) {
    return "lbl_password_required";
  } else if (password.length < 6) {
    return "lbl_password_must_be_at_least_6_characters";
  } else if (!password.contains(RegExp(r'[A-Z]+'))) {
    return "lbl_password_must_contain_at_least_one_uppercase_letter";
  } else if (!password.contains(RegExp(r'[a-z]+'))) {
    return "lbl_password_must_contain_at_least_one_lowercase_letter";
  } else if (!password.contains(RegExp(r'[0-9]+'))) {
    return "lbl_password_must_contain_at_least_one_number";
  } else if (!password.contains(RegExp(r'[!@#$%^&*()-+\/]+'))) {
    return "lbl_password_must_contain_at_least_one_special_character";
  }
  return null;
}

String? validateUsername(String? username) {
  if (username == null || username.isEmpty) {
    return "lbl_username_required";
  } else if (username.length < 3) {
    return "lbl_username_must_be_at_least_3_characters";
  }
  return null;
}

String? validatePhoneNumber(String? phoneNumber) {
  if (phoneNumber == null || phoneNumber.isEmpty) {
    return "lbl_phone_number_required";
  } else if (!phoneNumber.contains(RegExp(r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$'))) {
    return "lbl_phone_number_must_be_numeric";
  } else if (phoneNumber.length < 10) {
    return "lbl_phone_number_must_be_at_least_10_digits";
  }
  return null;
}

String? validateAddress(String? value) {
  if (value == null || value.isEmpty) {
    return "lbl_address_required";
  } else if (value.length < 5) {
    return "lbl_address_min_length";
  } else if (!value.contains(' ')) {
    return "lbl_address_must_contain_space";
  }
  return null;
}

String? validateText(String? value) {
  if (value == null || value.isEmpty) {
    return "lbl_required_field";
  } else if (!value.contains(RegExp(r'^[a-zA-Z]+$'))) {
    return "lbl_insert_valid_text";
  }
  return null;
}

String? validateNotEmpty(String? value) {
  if (value == null || value.isEmpty) {
    return "lbl_required_field";
  }
  return null;
}
