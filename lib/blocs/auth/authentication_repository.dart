import 'package:firebase_auth/firebase_auth.dart';
import 'base_auth_repository.dart';

class AuthRepository extends BaseAuthRepository {
  final FirebaseAuth _firebaseAuth;

  AuthRepository({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  @override
  Future<User?> signUp({required String phone}) async {
    User? user;
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          // ANDROID ONLY!

          // Sign the user in (or link) with the auto-generated credential
          final signedInUser =
              await _firebaseAuth.signInWithCredential(credential);
          user = signedInUser.user;
        },
        verificationFailed: (FirebaseAuthException e) {
          if (e.code == 'invalid-phone-number') {
            print('The provided phone number is not valid.');
          }

          // Handle other errors
        },
        codeSent: (String verificationId, int? resendToken) async {
          // Update the UI - wait for the user to enter the SMS code
          String smsCode = 'xxxx';

          // Create a PhoneAuthCredential with the code
          PhoneAuthCredential credential = PhoneAuthProvider.credential(
              verificationId: verificationId, smsCode: smsCode);

          // Sign the user in (or link) with the credential
          await _firebaseAuth.signInWithCredential(credential);
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-resolution timed out...
        },
      );
    } catch (_) {}
    return user;
  }

  @override
  Stream<User?> get user => _firebaseAuth.userChanges();
}
