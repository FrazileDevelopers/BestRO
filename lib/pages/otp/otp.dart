import 'package:auto_route/auto_route.dart';
import 'package:bestro/constants/strings.dart';
import 'package:bestro/constants/values.dart';
import 'package:bestro/validations/fzvalidations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:firebase_auth/firebase_auth.dart' as Auth;

import '../../constants/colors.dart';
import '../../routes/router.gr.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? firebaseUser;
  String? _verificationCode;
  TextEditingController pinController = TextEditingController();
  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  @override
  void initState() {
    super.initState();
    _verifyPhone();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final height = mq.size.height;
    final width = mq.size.width;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          BestRoStrings.otpText,
          style: TextStyle(
            color: BestRoColors.blue,
          ),
        ),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                BestRoStrings.otpLabel,
                style: GoogleFonts.poppins(
                  color: BestRoColors.blue,
                  fontSize: width * .05,
                ),
              ),
              SizedBox(
                height: height * .003,
              ),
              Text(
                BestRoStrings.otpTag,
                style: GoogleFonts.poppins(
                  color: BestRoColors.grey,
                  fontSize: width * .03,
                ),
              ),
              SizedBox(
                height: height * .003,
              ),
              Text(
                BestRoValues.phone!,
                style: GoogleFonts.poppins(
                  color: BestRoColors.black,
                  fontSize: width * .035,
                ),
              ),
              SizedBox(
                height: height * .02,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Pinput(
                  length: 6,
                  obscureText: true,
                  validator: (otp) => FzValidation.otpValidator(otp),
                  controller: pinController,
                  onSubmitted: (pin) async {
                    // await _firebaseAuth
                    //     .signInWithCredential(
                    //   PhoneAuthProvider.credential(
                    //       verificationId: _verificationCode!, smsCode: pin),
                    // )
                    //     .then((value) async {
                    //   if (value.user != null) {
                    //     context.router.replaceAll(
                    //       [
                    //         LoginRouter(),
                    //       ],
                    //     );
                    //   }
                    // });
                  },
                ),
              ),
              SizedBox(
                height: height * .02,
              ),
              Text(BestRoStrings.otpError),
              MaterialButton(
                onPressed: () async {
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                  print('OTP = $_verificationCode');
                  print('Verification => ' + _verificationCode.toString());
                  Auth.PhoneAuthCredential credential =
                      Auth.PhoneAuthProvider.credential(
                          verificationId: _verificationCode!,
                          smsCode: pinController.text);

                  final Auth.User? user =
                      (await _firebaseAuth.signInWithCredential(credential))
                          .user;
                  print(user!.uid.toString());
                  context.router.push(BottomNavHomeRouter());
                },
                child: Text(BestRoStrings.otpVerify),
                color: BestRoColors.blue,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _verifyPhone() async {
    print('+91' + BestRoValues.phone!);
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: "+91" + BestRoValues.phone!,
      verificationCompleted: (PhoneAuthCredential credential) async {
        // ANDROID ONLY!

        print('CREDENTIAL = ' + credential.token.toString());
        // Sign the user in (or link) with the auto-generated credential
        final signedInUser =
            await _firebaseAuth.signInWithCredential(credential);
        firebaseUser = signedInUser.user;
      },
      verificationFailed: (FirebaseAuthException e) {
        //failed
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        } else {
          print(e.code.toString());
        }

        // Handle other errors
      },
      codeSent: (String verificationId, int? resendToken) async {
        // Update the UI - wait for the user to enter the SMS code
        // String smsCode = 'xxxx';

        setState(() {
          _verificationCode = verificationId;
        });
        // Create a PhoneAuthCredential with the code
        // PhoneAuthCredential credential = PhoneAuthProvider.credential(
        //     verificationId: verificationId, smsCode: smsCode);

        // Sign the user in (or link) with the credential
        // await _firebaseAuth.signInWithCredential(credential);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        // Auto-resolution timed out...
        //todo timout
      },
      timeout: Duration(seconds: 60),
    );
  }
}
