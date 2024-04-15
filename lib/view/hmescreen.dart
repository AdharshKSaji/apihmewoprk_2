
import 'package:apihmewoprk_2/controller/HomeScreenController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    bool isLoading = false;
  @override
  void initState() {
    fetch();
    super.initState();
  }

  fetch() async {
    isLoading = true;
    setState(() {});
    await Provider.of<HomeScreenController>(context,listen: false).getData();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final providerObj=Provider.of<HomeScreenController>(context,listen: false);

    return Scaffold(
      body: Center(child: 
        isLoading == true
              ? CircularProgressIndicator()
              : Container(
                  child: 
      
                    ListView.builder(itemCount: providerObj.resModel?.places?.length,itemBuilder: (context, index) => Container(
  child: Column(
    children: [
      Text(providerObj.resModel?.places?[index].placeName??""),
       Text(providerObj.resModel?.places?[index].latitude??""),
        Text(providerObj.resModel?.places?[index].state??""),
         Text(providerObj.resModel?.places?[index].longitude??""),
        

    ],
  ),
),



    )
                  
              
                  
     , 
     ) ),
     floatingActionButton: FloatingActionButton(
        onPressed: () {
          fetch();
        },
      ),);
  }
}