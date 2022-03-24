import 'package:auto_route/auto_route.dart';
import 'package:bestro/constants/strings.dart';
import 'package:bestro/models/servicesModel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../routes/router.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPos = 0;
  final assetImages = [
    'assets/slider/1.jpg',
    'assets/slider/2.jpg',
    'assets/slider/3.jpg',
    'assets/slider/4.jpg',
    'assets/slider/5.jpg',
    'assets/slider/6.jpg',
    'assets/slider/7.jpg',
  ];

  List<ServicesModel> services = [
    ServicesModel(image: 'assets/services/1.jpg', name: 'Service'),
    ServicesModel(image: 'assets/services/2.jpg', name: 'Repair'),
    ServicesModel(image: 'assets/services/3.jpg', name: 'Installation'),
    ServicesModel(image: 'assets/services/4.jpg', name: 'Uninstallation'),
    ServicesModel(image: 'assets/services/6.jpg', name: 'AMC'),
    ServicesModel(image: 'assets/services/5.png', name: 'New RO'),
  ];

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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: height * .4,
                  viewportFraction: 1.0,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentPos = index;
                    });
                  }),
              items: List.generate(
                assetImages.length,
                (i) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        assetImages[i],
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: width,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: assetImages.map((url) {
                  int index = assetImages.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          currentPos == index ? Colors.white : Colors.white54,
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              height: height * .1,
              width: width,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Water Purifier',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: height * .01,
                  ),
                  Container(
                    height: 2.0,
                    width: width * .42,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
              child: SizedBox(
                child: Text(
                  'Please Select',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * .2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: List.generate(
                  services.length,
                  (i) => InkWell(
                    onTap: () {},
                    child: Container(
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.withOpacity(.2),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CircleAvatar(
                            minRadius: 15.0,
                            maxRadius: 25.0,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(services[i].image),
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Text(
                            services[i].name,
                            style: TextStyle(
                              fontSize: width * .035,
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
      ),
    );
  }
}
