import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Dexvoacarouselslider extends StatefulWidget {
  const Dexvoacarouselslider({super.key});

  @override
  State<Dexvoacarouselslider> createState() => _DexvoacarouselsliderState();
}

class _DexvoacarouselsliderState extends State<Dexvoacarouselslider> {
  List<String> imgeUrl = [
    'https://www.addevice.io/storage/ckeditor/uploads/images/65f840d316353_mobile.app.development.1920.1080.png',
    'https://www.credencys.com/wp-content/uploads/2020/02/mobile-app-development-lifecycle-steps.jpg',
    'https://www.addevice.io/storage/ckeditor/uploads/images/65f840d316353_mobile.app.development.1920.1080.png',
    'https://www.credencys.com/wp-content/uploads/2020/02/mobile-app-development-lifecycle-steps.jpg',
    'https://www.addevice.io/storage/ckeditor/uploads/images/65f840d316353_mobile.app.development.1920.1080.png',
    'https://www.credencys.com/wp-content/uploads/2020/02/mobile-app-development-lifecycle-steps.jpg',
  ];

  double kWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double kHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Container(
        child: carousel(imgeUrl),
      ),
    );
  }

  carousel(List<String> data) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            scrollDirection: Axis.horizontal,
            autoPlayAnimationDuration: Duration(milliseconds: 600),
            autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            height: kWidth(context) > 450 ? 380 : 200,
            viewportFraction: 0.8,
            onPageChanged: (index, reason) {
              setState(() {
                _index = index;
              });
            },
          ),
          items: data.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
                  height: 155,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        offset: Offset(0, 2)),
                  ], borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image(
                        image: NetworkImage(i),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: data.asMap().entries.map((entry) {
              return Container(
                width: 20.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff1967d2)
                        .withOpacity(_index == entry.key ? 0.9 : 0.5)),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
