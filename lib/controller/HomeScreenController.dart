import 'dart:convert';

import 'package:apihmewoprk_2/model/apimodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class HomeScreenController with ChangeNotifier{
  var myData;
  ResModel?resModel;
  
  Future getData()async{
    Uri url=Uri.parse("https://api.zippopotam.us/us/33162");
    var res = await http.get(url);

    if(res.statusCode==200){
      print(res.body);
      var converedData=jsonDecode(res.body);
      myData=converedData;
      resModel=ResModel.fromJson(converedData);
      
    }else{
      print("failed");
    }

  }
  
}