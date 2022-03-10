import 'package:bestro/constants/colors.dart';
import 'package:bestro/constants/strings.dart';
import 'package:flutter/material.dart';

class ServiceDetails extends StatefulWidget {
  const ServiceDetails({Key? key}) : super(key: key);

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
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
      appBar: AppBar(
        backgroundColor: BestRoColors.white,
        foregroundColor: BestRoColors.black,
        elevation: 0.0,
        title: Text(BestRoStrings.serviceDetailTitle),
      ),
    );
  }
}
