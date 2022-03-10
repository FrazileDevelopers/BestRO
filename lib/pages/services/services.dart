import 'package:bestro/constants/colors.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

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
        title: Text('Water Purifier'),
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
                      color: Colors.grey[300]!,
                    ),
                    label: Text(
                      'Services',
                      style: TextStyle(
                        color: _isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                    selected: _isSelected,
                    selectedColor: Colors.black,
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
          SingleChildScrollView(
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
                        color: Colors.grey[300]!,
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
                                  Text('Service Check Up'),
                                  Text('5.0 20k ratings'),
                                  Text('₹299 - 60 min'),
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * .07),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Container(
                                  height: 5.0,
                                  width: 5.0,
                                  decoration: BoxDecoration(
                                    color: BestRoColors.grey,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height * .03,
                                child: Text('Includes'),
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
        ],
      ),
    );
  }
}
