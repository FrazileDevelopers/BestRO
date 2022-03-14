import 'package:auto_route/auto_route.dart';
import 'package:bestro/constants/colors.dart';
import 'package:bestro/constants/strings.dart';
import 'package:bestro/constants/values.dart';
import 'package:bestro/pages/otp/otp.dart';
import 'package:bestro/routes/router.gr.dart';
import 'package:bestro/validations/fzvalidations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          BestRoStrings.loginText,
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
                BestRoStrings.loginLabel,
                style: GoogleFonts.poppins(
                  color: BestRoColors.blue,
                  fontSize: width * .05,
                ),
              ),
              SizedBox(
                height: height * .02,
              ),
              Padding(
                padding: EdgeInsets.only(left: width * .05, right: width * .05),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: BestRoStrings.mobileLabel,
                    prefix: Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Text(BestRoStrings.indiaCode),
                    ),
                  ),
                  maxLength: 10,
                  keyboardType: TextInputType.phone,
                  onSaved: (val) => BestRoValues.phone = val,
                  onFieldSubmitted: (val) => BestRoValues.phone = val,
                  validator: (val) => FzValidation.phoneValidator(val),
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
                    context.router.push(OtpRouter());
                    // } else {
                    //   print(reguser.getResponseJson().status.toString());
                    // }
                    print(BestRoValues.phone);
                  }
                },
                child: Text(BestRoStrings.loginLabel),
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
