import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';
import '../../constants/values.dart';
import '../../validations/fzvalidations.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
        foregroundColor: Colors.black,
        elevation: 0.0,
        title: Text(BestRoStrings.editProfileTitle),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Container(
                  width: width * .9,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0),
                    shape: BoxShape.circle,
                  ),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: BestRoStrings.profilePic,
                    placeholder: (context, url) => CircleAvatar(
                      backgroundColor: Colors.orange,
                      minRadius: width * .2,
                      maxRadius: width * .25,
                    ),
                    errorWidget: (context, url, error) =>
                        Icon(Icons.account_circle),
                    imageBuilder: (context, image) => CircleAvatar(
                      backgroundImage: image,
                      minRadius: width * .2,
                      maxRadius: width * .25,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * .05, right: width * .05, top: 10.0),
                child: SizedBox(
                  height: height * .05,
                  child: TextFormField(
                    initialValue: 'Zaara Yesmin',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: BestRoColors.blue,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: BestRoStrings.nameLabel,
                      label: Text(BestRoStrings.nameLabel),
                    ),
                    onSaved: (val) => BestRoValues.name = val,
                    validator: (val) => FzValidation.nameValidator(val!),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * .05, right: width * .05, top: 10.0),
                child: SizedBox(
                  height: height * .05,
                  child: TextFormField(
                    initialValue: 'zaarayesmin@gmail.com',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: BestRoColors.blue,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: BestRoStrings.emailLabel,
                      label: Text(BestRoStrings.emailLabel),
                    ),
                    onSaved: (val) => BestRoValues.name = val,
                    validator: (val) => FzValidation.nameValidator(val!),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * .05, right: width * .05, top: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: width,
                    padding: EdgeInsets.all(height * .01),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: BestRoColors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      '+91 985 445 6816',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: BestRoColors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * .05, right: width * .05, top: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: width,
                    padding: EdgeInsets.all(height * .01),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: BestRoColors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: width * .7,
                          child: Text(
                            'H.No. 39-A, VV Homes, Imperial City, Amritsar, Punjab, India 143001',
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: BestRoColors.grey,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            size: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * .01,
              ),
              MaterialButton(
                onPressed: () async {
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                  if (validateAndSave()) {
                    // await reguser.registerUser();
                    // if (reguser.getResponseJson().status == true) {
                    // context.router.push(OtpRouter());
                    // } else {
                    //   print(reguser.getResponseJson().status.toString());
                    // }
                    print('Saved!');
                  }
                },
                child: Text(BestRoStrings.updateProfile),
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
