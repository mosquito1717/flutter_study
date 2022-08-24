import 'package:flutter/material.dart';

var theme = ThemeData(
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            primary: Colors.black,
            backgroundColor: Colors.orange,
        )
    ),
    iconTheme: IconThemeData(color:Colors.black),
    appBarTheme: AppBarTheme(
        color: Colors.white,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 25),
        actionsIconTheme: IconThemeData(color: Colors.black)
    ),
    textTheme: TextTheme(
        bodyText2: TextStyle(color: Colors.red),
      bodyText1: TextStyle(color: Colors.amber)
    )
);
