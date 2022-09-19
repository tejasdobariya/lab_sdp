import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {

    final response = await

    get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    print(response.body);
// print(response.body.userId);

    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
  }
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('LOADING SCREEN'),
    );
  }
}