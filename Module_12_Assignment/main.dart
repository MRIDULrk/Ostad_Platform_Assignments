
import 'package:flutter/material.dart';

import 'PhotoList.dart';

void main(){
  runApp(PhotoGalleryApp());
}
class PhotoGalleryApp extends StatelessWidget {
  const PhotoGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhotoList(),
    );
  }
}

