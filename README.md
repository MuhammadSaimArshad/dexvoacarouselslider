# dexvoacarouselslider

A Dexvoa Carousel Slider widget.

## Features 
 
* Custom Image
* Auto play

## Supported platforms

* Flutter Android
* Flutter iOS


## Installation

Add `cdexvoacarouselslider: ^0.0.1` to your `pubspec.yaml` dependencies. And import it:

```dart
import 'package:dexvoacarouselslider/dexvoacarouselslider.dart';
```

## How to use

Simply create a `Dexvoa Carousel Slider` widget, and pass the required params:

```dart
<<<<<<< HEAD
import 'package:dexvoacarouselslider/dexvoacarouselslider.dart';
import 'package:flutter/material.dart';

=======



import 'package:dexvoacarouselslider/dexvoacarouselslider.dart';
import 'package:flutter/material.dart';

>>>>>>> 845b2948349e34830f9dfb794f48a08433567d89
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
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

```



