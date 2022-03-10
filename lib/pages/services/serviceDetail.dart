import 'package:bestro/constants/colors.dart';
import 'package:bestro/constants/strings.dart';
import 'package:bestro/constants/values.dart';
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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: List.generate(
                  5,
                  (i) => Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: BestRoColors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey[300]!,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Service Check up',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 5.0,
                                    width: 5.0,
                                    decoration: BoxDecoration(
                                      color: BestRoColors.lightGrey,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  SizedBox(
                                    width: width * .6,
                                    child: Text(
                                      'Includes cleaning of the machine and filters.',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 5.0,
                                    width: 5.0,
                                    decoration: BoxDecoration(
                                      color: BestRoColors.lightGrey,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  SizedBox(
                                    width: width * .6,
                                    child: Text(
                                      'Includes cleaning of the machine and filters.',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 5.0,
                                    width: 5.0,
                                    decoration: BoxDecoration(
                                      color: BestRoColors.lightGrey,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  SizedBox(
                                    width: width * .6,
                                    child: Text(
                                      'Includes cleaning of the machine and filters.',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: width * .26,
                            height: height * .035,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: BestRoColors.blue,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      BestRoValues.qty != 1
                                          ? BestRoValues.qty--
                                          : null;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        10.0, 5.0, 10.0, 5.0),
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                        color: BestRoColors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.fromLTRB(
                                      10.0, 5.0, 10.0, 5.0),
                                  color: BestRoColors.white,
                                  child: Text(
                                    BestRoValues.qty.toString(),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      BestRoValues.qty++;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        10.0, 5.0, 10.0, 5.0),
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                        color: BestRoColors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: height * .25,
                width: width,
                decoration: BoxDecoration(
                  color: BestRoColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: BestRoColors.grey,
                      offset: Offset(0.0, 5.0),
                      blurRadius: 5.0,
                      spreadRadius: 10.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Item Total',
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            '₹ 500.00',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Safety & Partner Welfare Fees',
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            '₹ 500.00',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20.0,
                child: Container(
                  height: height * .06,
                  width: width * .92,
                  decoration: BoxDecoration(
                    color: BestRoColors.black,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          '₹ 1000.00',
                          style: TextStyle(
                            color: BestRoColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              color: BestRoColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
