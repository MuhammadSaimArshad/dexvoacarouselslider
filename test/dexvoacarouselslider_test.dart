import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('DexvoaCarouselSlider renders images',
      (WidgetTester tester) async {
    final images = [
      'https://via.placeholder.com/300x200',
      'https://via.placeholder.com/300x200',
    ];

    await tester.pumpWidget(
      MaterialApp(
        home: DexvoaCarouselSlider(images: images),
      ),
    );

    expect(find.byType(Image), findsNWidgets(images.length));
  });
}

DexvoaCarouselSlider({required List<String> images}) {}
