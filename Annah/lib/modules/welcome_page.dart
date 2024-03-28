import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class welcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>homePage(),));
                },
                child: Container(
                  height: 150,
                    width: 150,
                    decoration: BoxDecoration(shape: BoxShape.circle,boxShadow: [BoxShadow(color: Colors.black,spreadRadius: 1,blurRadius: 9)]),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image(image: AssetImage("assets/images/banner.jpeg"),height: double.infinity,width: double.infinity,)),
              ),
              SizedBox(height: 20,),
              Container(
                  height: 60,
                  width: 100,
                  alignment: Alignment.center,
                  child: Text("أناه",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w700),))

            ],
          ),
        ),
      ),
    );
  }

}