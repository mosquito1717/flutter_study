import 'package:flutter/material.dart';
import 'style.dart' as style;
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(
      MaterialApp(
        theme: style.theme,
        home:MyApp()
      )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

// 여기서부터가 진짜
class _MyAppState extends State<MyApp> {
  var tab = 0;
  var data=[];
  getData() async {
    var result = await http.get(Uri.parse('https://codingapple1.github.io/app/data.json'));
    //if(result.statusCode == 200){
    var result2 = jsonDecode(result.body);
    setState((){
      data = result2;
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

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
      body: [Home(data: data), Text('샵페이지')][tab],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (i){
          setState(() {
            tab = i;
          });
        },
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

class Home extends StatelessWidget {
  const Home({Key? key, this.data}) : super(key: key);
  final data;

  @override
  Widget build(BuildContext context) {
    if(data.isNotEmpty){
      return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (c, i){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(data[i]['image']),
                Text('좋아요 100'),
                Text(data[i]['user']),
                Text(data[i]['content']),
              ],
            );
          }
      );
    } else {
      return Column(
        children: [
          CircularProgressIndicator(),
          Text('로딩중임'),
        ],
      );
    }

  }
}
