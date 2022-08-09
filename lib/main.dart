import 'package:flutter/material.dart';
import 'package:p1/screen/home/HomeScreen.dart';
import 'package:p1/screen/home/h_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<HomeProvider>(
      create: (context)=>HomeProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>HomeScreen(),
        },
      ),
    ),
  );
}
