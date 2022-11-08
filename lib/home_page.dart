import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "https://media.bunjang.co.kr/product/200602626_1_1664367537_w%7Bres%7D.jpg",
      "https://cdn-cf-east.streamable.com/image/mbljjp.jpg?Expires=1667312520&Signature=RBA2S73nKMw6mMjoPJ491qz-nzKKkUXimiaJrrx3ySW5ExR3VUND8y8vBM1YfrPPo7MjxckJQZy8AbVAyxI1c9QcKV~yGBFjQRfyw3fEBndNGmA0kvdFEnscyuIHSgq5P~NESjA--tDnCmSXXNi5zM8D0Acz~OHajSuDjh9692jRvgowajUwDv9e7OQ9Utrfrx9VFjyVEhYfO~UiuirST888A-7FW3C-aC-HC9dCs1jdpdV5jXbNS-P2ZPMNpRfQJWYeOH8jvsIsnPNSyw2B5ERQE-lm6ARlOjupFDy3RQxSPn8rR5wxVveSHqFb8MUrRcB88Qm6ey5njwryU3J~Ug__&Key-Pair-Id=APKAIEYUVEN4EVB2OKEQ",
      "http://image.kmib.co.kr/online_image/2022/1107/2022110621110387076_1667736663_0924271857.jpg",
      "http://file3.instiz.net/data/file3/2022/08/26/0/a/b/0abe0f40977e385372388cb9e6c4139e.jpg",
      "http://file3.instiz.net/data/file3/2022/08/26/4/4/d/44d58e97e67ad356c054089e86d43265.jpg",
      "https://i1.daumcdn.net/thumb/C230x300/?fname=https://blog.kakaocdn.net/dn/bpRyLc/btrOxRN1Ia5/gM7LP5HSQZaL4vIFaKH1kk/img.png",
      "https://i.ytimg.com/vi/hFuJ_9jB058/mqdefault.jpg",
    ];

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
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          String image = images[index];
          return Feed(
            imgUrl: image,
          );
        },
      ),
    );
  }
}
