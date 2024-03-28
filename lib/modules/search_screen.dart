import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class searchScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffbf9b7a),
        toolbarHeight: 60,
        centerTitle: true,
      title: Text("Search",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
      ),
      body: SafeArea(child: Column(children: [
        // Stack(
        //   alignment: Alignment.bottomCenter,
        //   children: [
        //     Container(height: 100,width: double.infinity,color: Color(0xffbf9b7a),),
        //
        //   ],
        // ),
        ////////////////////////////////// SEARCH Space /////////////////////////////
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Search",
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder()
            ),
          ),
        ),
        ////////////////////////////////// SEARCH OPTION /////////////////////////////
        Container(
          height: 60,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              InkWell(
                onTap: (){},
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow(color: Colors.black,blurRadius: 1,spreadRadius: 1)],
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("الاكثر شهرة",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),),
                    )),
              ),
              SizedBox(width: 20,),
              InkWell(
                onTap: (){},
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow(color: Colors.black,blurRadius: 1,spreadRadius: 1)],
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("الافل سعرا",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),),
                    )),
              ),
              SizedBox(width: 20,),
              InkWell(
                onTap: (){},
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow(color: Colors.black,blurRadius: 1,spreadRadius: 1)],
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("الاكثر سعرا",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),),
                    )),
              ),

            ],),
          ),
        ),
        SizedBox(height: 20,),
        Text("النتائج",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),),
        Container(height: 1,width: 80,color: Colors.black,),
      ])),
    );
  }

}