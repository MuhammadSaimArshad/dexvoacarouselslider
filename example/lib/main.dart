import 'package:dexvoacarouselslider/dexvoacarouselslider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DexvoaCarouselSlider(),
    );
  }
}

class DexvoaCarouselSlider extends StatefulWidget {
  const DexvoaCarouselSlider({super.key});

  @override
  State<DexvoaCarouselSlider> createState() => _DexvoaCarouselSliderState();
}

class _DexvoaCarouselSliderState extends State<DexvoaCarouselSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Dexvoa Carousel Slider"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Dexvoacarouselslider(),
        ],
      ),
    );
  }
}
