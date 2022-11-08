import 'package:flutter/material.dart';
import 'home_page.dart';

// 배운 것
// Image.asset() 과 Image.network()
// leading, actions[], title
// fit: BoxFit.cover
// Row()
// Spacer()는 이것 양쪽에 있는 요소의 사이 공간을 비게 만듬
// MainAxisAlignment / CrossAxisAlignment

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
