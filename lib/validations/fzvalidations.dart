class FzValidation {
  /// Phone Validation
  static String? phoneValidator(String? phone) {
    String? error = 'Phone No. is not valid';
    if (phone!.isEmpty) {
      error = 'Phone No. can\'t be empty';
    } else {
      if (phone.length < 10) {
        error = 'Phone No. not valid';
      } else {
        error = null;
      }
    }

    return error;
  }
}
