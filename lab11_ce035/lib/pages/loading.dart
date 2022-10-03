import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import '../Services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setWorldTime() async {
    WordTime timeinstance =
        WordTime(location: 'kolkata', flag: 'india.png', url: 'Asia/Kolkata');
    await timeinstance.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location' : timeinstance.location,
      'flag': timeinstance.flag,
      'time':timeinstance.time,
    });


  }
  @override
  void initState() {
    super.initState();
    setWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
        body: Center(
            child:  SpinKitFadingCube(
              color: Colors.white,
              size: 50.0,
            )
        )
    );
  }
}
