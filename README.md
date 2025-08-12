# carousel_slider

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

```



