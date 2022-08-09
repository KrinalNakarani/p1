import 'package:flutter/material.dart';
import 'package:p1/screen/home/h_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var providertrue;
  var providerfalse;
  @override
  Widget build(BuildContext context) {

     providertrue = Provider.of<HomeProvider>(context, listen: true);
     providerfalse = Provider.of<HomeProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${providertrue.i}",style: TextStyle(fontSize: 30,),),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      providerfalse.ADD();
                    },
                    child: Text("Add"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange, elevation: 5),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      providerfalse.multy2();
                    },
                    child: Text("2X"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange, elevation: 5),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      providerfalse.multy3();
                    },
                    child: Text("3X"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange, elevation: 5),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      providerfalse.multy6();
                    },
                    child: Text("6X"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange, elevation: 5),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      providerfalse.Minus();
                    },
                    child: Text("Minus"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange, elevation: 5),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
