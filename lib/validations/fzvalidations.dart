import 'package:fzregex/utils/fzregex.dart';
import 'package:fzregex/utils/pattern.dart';

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

  /// Name Validation
  static String? nameValidator(String name) {
    String? error;
    if (name.isEmpty) error = 'Name can\'t be empty';

    // if (Fzregex.hasMatch(name, FzPattern.alphabetOnly)) error = null;

    return error;
  }

  /// Email Validation
  static String? emailValidator(String value) {
    String? error = 'Email is not valid';

    if (value.isEmpty) {
      error = "Email can't be empty";
    }

    if (Fzregex.hasMatch(value, FzPattern.email)) {
      error = null;
    }

    // The pattern of the email didn't match the regex in Fzregex.
    return error;
  }

  /// OTP Validation
  static String? otpValidator(String? otp) {
    String? error = 'OTP cannot be empty';
    if (otp!.isEmpty) {
      error;
    } else {
      error = null;
    }

    return error;
  }
}
