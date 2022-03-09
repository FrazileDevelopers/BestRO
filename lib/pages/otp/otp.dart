import 'package:auto_route/auto_route.dart';
import 'package:bestro/constants/strings.dart';
import 'package:bestro/constants/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

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
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
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
                  length: 4,
                  obscureText: true,
                  onCompleted: (value) => BestRoValues.otp = value,
                ),
              ),
              SizedBox(
                height: height * .02,
              ),
              MaterialButton(
                onPressed: () async {
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                  if (validateAndSave()) {
                    // await reguser.registerUser();
                    // if (reguser.getResponseJson().status == true) {
                    context.router.push(BottomNavHome());
                    // } else {
                    //   print(reguser.getResponseJson().status.toString());
                    // }
                    print(BestRoValues.otp);
                  }
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
}
