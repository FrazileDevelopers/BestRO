import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bestro/constants/colors.dart';
import 'package:bestro/constants/strings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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

  StreamSubscription<QuerySnapshot>? subscription;
  List<DocumentSnapshot>? servicesCategoriesList;
  List<DocumentSnapshot>? servicesList;

  @override
  void initState() {
    firestore();
    super.initState();
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  void firestore() async {
    final FirebaseFirestore firestore = FirebaseFirestore.instance;
    firestore.settings = Settings(persistenceEnabled: true);
    final CollectionReference servicesCategoriesReference =
        firestore.collection('servicesCategories');
    print('Fetching Services Categories');
    final CollectionReference servicesReference =
        firestore.collection('services');
    print('Fetching Services');
    subscription = servicesCategoriesReference.snapshots().listen(
          (datasnapshot) => setState(
            () => servicesCategoriesList = datasnapshot.docs,
          ),
        );
    subscription = servicesReference.snapshots().listen(
          (datasnapshot) => setState(
            () => servicesList = datasnapshot.docs,
          ),
        );
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
        // elevation: 0.0,
        title: Text(BestRoStrings.serviceTitle),
        automaticallyImplyLeading: false,
      ),
      body: servicesList == null && servicesCategoriesList == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
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
                      servicesCategoriesList!.length,
                      (i) => Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ChoiceChip(
                          padding: EdgeInsets.all(2.0),
                          backgroundColor: Colors.white,
                          side: BorderSide(
                            color: BestRoColors.lightGrey,
                          ),
                          label: Text(
                            servicesCategoriesList![i]['name'],
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
                    padding:
                        EdgeInsets.only(left: width * .03, right: width * .07),
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
                          onPressed: () =>
                              context.router.push(RateListRouter()),
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
                        servicesList!.length,
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
                            padding:
                                const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * .07),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            servicesList![s]['name'],
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
                                                servicesList![s]['ratings'] +
                                                    ' ',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                              Text(
                                                "${servicesList![s]['raters']} ratings",
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      "₹${servicesList![s]['price']}",
                                                      style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12.0,
                                                      ),
                                                    ),
                                                    Text(
                                                      "${servicesList![s]['discount']}% OFF",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 11.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  '₹${servicesList![s]['price'] * servicesList![s]['discount'] / 100}',
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
                                                    servicesList![s]['image'],
                                                  ),
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
                                                  context.router.push(
                                                      ServiceDetailsRouter());
                                                },
                                                child: Container(
                                                  height: height * .03,
                                                  width: (width * .2) * .8,
                                                  decoration: BoxDecoration(
                                                    color: BestRoColors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            BestRoColors.grey,
                                                        blurRadius: 1.0,
                                                        spreadRadius: 1.0,
                                                        offset:
                                                            Offset(1.0, 1.0),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'ADD +',
                                                      style: TextStyle(
                                                        color:
                                                            BestRoColors.blue,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                  servicesList![s]['description'].length,
                                  (desc) => Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: width * .07),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
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
                                                servicesList![s]['description']
                                                    [desc],
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
