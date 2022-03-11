import 'package:auto_route/auto_route.dart';
import 'package:bestro/constants/colors.dart';
import 'package:bestro/constants/strings.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../routes/router.gr.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  bool _isSelected = false;
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
        title: Text(BestRoStrings.serviceTitle),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: height * .075,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1.0, 1.0),
                  blurRadius: 2.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: List.generate(
                5,
                (i) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ChoiceChip(
                    padding: EdgeInsets.all(2.0),
                    backgroundColor: Colors.white,
                    side: BorderSide(
                      color: BestRoColors.lightGrey,
                    ),
                    label: Text(
                      'Services',
                      style: TextStyle(
                        color: _isSelected
                            ? BestRoColors.white
                            : BestRoColors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    selected: _isSelected,
                    selectedColor: BestRoColors.blue,
                    onSelected: (bool s) {
                      setState(() {
                        _isSelected = s;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: height * .09,
            width: width,
            decoration: BoxDecoration(
              color: BestRoColors.white,
              border: Border(
                bottom: BorderSide(
                  color: BestRoColors.lightGrey,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: width * .03, right: width * .07),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    BestRoStrings.checkRates,
                    style: TextStyle(
                      color: BestRoColors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () => context.router.push(RateListRouter()),
                    child: Text(BestRoStrings.ratelist),
                    color: BestRoColors.blue,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  5,
                  (s) => Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: BestRoColors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: BestRoColors.lightGrey,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * .07),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Service Check Up',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: BestRoColors.blue,
                                          size: 14.0,
                                        ),
                                        Text(
                                          '5.0 ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        Text(
                                          '20.5K ratings',
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: width * .3,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                '₹18,000',
                                                style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                              Text(
                                                '50% OFF',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '₹9,000',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    DottedLine(
                                      direction: Axis.horizontal,
                                      lineLength: width * .5,
                                      lineThickness: 3.0,
                                      dashColor: BestRoColors.lightGrey,
                                      dashRadius: 10.0,
                                      dashGapRadius: 5.0,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: width * .25,
                                  width: width * .25,
                                  child: Stack(
                                    fit: StackFit.loose,
                                    children: [
                                      Container(
                                        height: width * .22,
                                        width: width * .22,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1646724351789-559d36cdfaff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                      ),
                                      Positioned(
                                        left: (width * .2) * .13,
                                        bottom: 4.0,
                                        child: InkWell(
                                          onTap: () {
                                            print('ADD');
                                          },
                                          child: Container(
                                            height: height * .03,
                                            width: (width * .2) * .8,
                                            decoration: BoxDecoration(
                                              color: BestRoColors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: BestRoColors.grey,
                                                  blurRadius: 1.0,
                                                  spreadRadius: 1.0,
                                                  offset: Offset(1.0, 1.0),
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: Text(
                                                'ADD +',
                                                style: TextStyle(
                                                  color: BestRoColors.blue,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
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
                          ...List.generate(
                            3,
                            (desc) => Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width * .07),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: height * .055,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 5.0,
                                          width: 5.0,
                                          decoration: BoxDecoration(
                                            color: BestRoColors.grey,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        SizedBox(
                                          width: width * .7,
                                          child: Text(
                                            'Includes cleaning of the machine and filters.filters.filters.',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 12.0,
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
