import 'package:flutter/material.dart';

import '../../constants/strings.dart';

class RateList extends StatefulWidget {
  const RateList({Key? key}) : super(key: key);

  @override
  State<RateList> createState() => _RateListState();
}

class _RateListState extends State<RateList> {
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
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title: Text(BestRoStrings.ratelist),
      ),
      body: Container(),
    );
  }
}
