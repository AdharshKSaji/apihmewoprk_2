import 'package:apihmewoprk_2/controller/HomeScreenController.dart';
import 'package:apihmewoprk_2/view/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [ChangeNotifierProvider(create: (context) => HomeScreenController())]
    ,child: MaterialApp(home: HomeScreen()));
  }
}