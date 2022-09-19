import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/choose_location.dart';
import 'pages/loading.dart';

void main() => runApp(MaterialApp(
  // home: Home(),
  // instead of making home: property to make any page to initialize at beginning...
  // we can use following code ....
  // initialRoute: '/home',
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
));