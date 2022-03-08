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
                10,
                (s) => Container(
                  width: width,
                  decoration: BoxDecoration(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
