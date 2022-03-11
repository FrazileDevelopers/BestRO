import 'package:auto_route/auto_route.dart';
import 'package:bestro/constants/colors.dart';
import 'package:bestro/constants/values.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../constants/strings.dart';
import '../../routes/router.gr.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1.0,
        automaticallyImplyLeading: false,
        title: Text(BestRoStrings.profileTitle),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: width * .9,
                height: height * .12,
                decoration: BoxDecoration(
                  color: BestRoColors.white,
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: [
                    BoxShadow(
                      color: BestRoColors.grey,
                      offset: Offset(1.0, 1.0),
                      blurRadius: 2.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Zaara Yesmin'),
                          Text('yesmin@gmail.com'),
                          Text(BestRoValues.phone!),
                        ],
                      ),
                      IconButton(
                        onPressed: () =>
                            context.router.push(EditProfileRouter()),
                        icon: Icon(
                          Icons.edit,
                          color: BestRoColors.black,
                          size: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * .02),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: width * .9,
                    height: height * .05,
                    decoration: BoxDecoration(
                      color: BestRoColors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: BestRoColors.grey,
                          offset: Offset(1.0, 1.0),
                          blurRadius: 2.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.message),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('Help Center'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * .02),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: width * .9,
                    height: height * .05,
                    decoration: BoxDecoration(
                      color: BestRoColors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: BestRoColors.grey,
                          offset: Offset(1.0, 1.0),
                          blurRadius: 2.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.info),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('About Best Ro Company'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * .02),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: width * .9,
                    height: height * .05,
                    decoration: BoxDecoration(
                      color: BestRoColors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: BestRoColors.grey,
                          offset: Offset(1.0, 1.0),
                          blurRadius: 2.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.star),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('Rate Best Ro Company'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
