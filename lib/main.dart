import 'package:flutter/material.dart';
import 'package:hello_word_flutter/screens/storeView.dart';
import 'package:hello_word_flutter/screens/favoriteView.dart';
import 'package:hello_word_flutter/screens/couponView.dart';
import 'package:hello_word_flutter/screens/shoppingBasketView.dart';
import 'package:hello_word_flutter/screens/myView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pageIndex = 0;
  final List<Widget> _children = [
    StoreView(),
    FavoriteView(),
    CouponView(),
    ShoppingBasketView(),
    MyView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appBar'),
        centerTitle: true,
        elevation: 6,
      ),
      body: _children[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.storefront), label: '매장보기'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: '좋아요'),
          BottomNavigationBarItem(icon: Icon(Icons.tag), label: '쿠폰'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_grocery_store_outlined),
              label: '장바구니'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My'),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _pageOfTop(), // 상단
        _pageOfMiddle(), // 중단
        _pageOfBottom(), // 하단
      ],
    );
  }
}

Widget _pageOfTop() {
  return Text('_pageOfTop');
}

Widget _pageOfMiddle() {
  return Text('_pageOfMiddle');
}

Widget _pageOfBottom() {
  return Text('_pageOfBottom');
}
