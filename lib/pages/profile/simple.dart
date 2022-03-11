import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';

class SimpleProfile extends StatefulWidget {
  const SimpleProfile({Key? key}) : super(key: key);

  @override
  State<SimpleProfile> createState() => _SimpleProfileState();
}

class _SimpleProfileState extends State<SimpleProfile> {
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
      body: Column(
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
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              'Zaara Yesmin',
              style: TextStyle(
                fontSize: 20.0,
                color: BestRoColors.blue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              'zaarayesmin@gmail.com',
              style: TextStyle(
                fontSize: 18.0,
                color: BestRoColors.blue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              '+91 985 445 6816',
              style: TextStyle(
                fontSize: 18.0,
                color: BestRoColors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
