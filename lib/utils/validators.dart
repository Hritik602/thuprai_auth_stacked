class Validators {
  static String? email(String? value) {
    if (value == null) {
      return null;
    }

    if (value.contains(RegExp(r'[0-9]'))) {
      return 'No numbers allowed';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null) {
      return null;
    }

    if (value.length < 8) {
      return 'Password length must be greater than 8 character';
    }
    return null;
  }
}
