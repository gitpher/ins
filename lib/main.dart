import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.camera, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            onPressed: () {},
          )
        ],
        title: Image.asset(
          'assets/logo.png',
          height: 32,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 이미지
          Image.network(
            "https://media.bunjang.co.kr/product/200602626_1_1664367537_w360.jpg",
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(CupertinoIcons.heart, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(CupertinoIcons.chat_bubble, color: Colors.black),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Icon(CupertinoIcons.bookmark, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
          // 좋아요
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "15300 likes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // 설명
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Host Danaka's 2022 profile picture~ Hope you enjoy!!",
            ),
          ),

          // 날짜
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "NOVEMBER 8",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
