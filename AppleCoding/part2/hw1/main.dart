import 'package:flutter/material.dart';
import 'style.dart' as style;

void main() {
  runApp(
      MaterialApp(
        theme: style.theme,
        home:MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false, // for 왼쪽 정렬
          title: Text('Instagram'),
          actions:[
            IconButton(
              icon: Icon(Icons.add_box_outlined),
              onPressed: (){},
              iconSize: 30,
            ),
        ]),
      body: Text('안녕', style: Theme.of(context).textTheme.bodyText1),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.black),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
            label: 'ShoppingBag'
          )
        ]
      ),
    );
  }
}
