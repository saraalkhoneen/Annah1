import 'package:annah/modules/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/home_service_model.dart';

class homePage extends StatelessWidget{

  List<HomeServiceModel> homeServiceList=[
    HomeServiceModel(serviceName: "مساج",serviceImage: "assets/images/massage1.jpg"),
    HomeServiceModel(serviceName: "يوقا",serviceImage: "assets/images/yoga2.jpg"),
  HomeServiceModel(serviceName: "تسلق جبال",serviceImage: "assets/images/climbing1.jpg"),
    // HomeServiceModel(serviceName: "زومبا",serviceImage: "assets/images/zomba.jpg"),
    HomeServiceModel(serviceName: "ركوب خيل",serviceImage: "assets/images/horsing1.jpg"),
    HomeServiceModel(serviceName: " رمايه",serviceImage: "assets/images/shooting1.jpg"),
  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        flexibleSpace: Container(width: double.infinity,height: double.infinity,color: Color(0xffbf9b7a),),
        centerTitle: true,
        title: Text("Home Page",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
      ),
      drawer: ItemDrawaerHome(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => searchScreen(),));
              },
              decoration: InputDecoration(
                hintText: "Search",
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder()
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => ItemHomeServiceList(homeServiceList[index]),
                separatorBuilder:(context, index) => SizedBox(height: 20,),
                itemCount: homeServiceList.length),
          )
        ]),
      ),
    );
  }

  Widget ItemHomeServiceList(HomeServiceModel homeServiceModel)=>Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 150,
      width: double.infinity,
    // child: CircleAvatar(
    //   backgroundImage: NetworkImage("https://img.freepik.com/free-photo/group-young-people-child-pose-close-up_1163-4969.jpg"),
    // ),
    // child: Image(image: NetworkImage("${homeServiceModel.serviceImage}",),fit: BoxFit.fill,),
    //   child: Column(
    //
    //     children: [
    //
    //       Container(
    //         height: 150,
    //           width: double.infinity,
    //           color: Colors.pink,
    //           child: Image(image: NetworkImage("https://png.pngtree.com/png-vector/20220205/ourmid/pngtree-archery-vector-illustration-png-image_4378805.png"),fit: BoxFit.fill,)),
    //   Text("${homeServiceModel.serviceName}",style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.w900,),)
    //
    // ],
    //   ),
      decoration: BoxDecoration(
        color: Colors.pink,
          borderRadius: BorderRadius.all(Radius.circular(20)),
      boxShadow: [BoxShadow(color: Colors.black,spreadRadius: 1,blurRadius: 3)]
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Image(image: AssetImage("${homeServiceModel.serviceImage}"),height:double.infinity,width: double.infinity,fit: BoxFit.fill,)
,
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                decoration: BoxDecoration(color: Colors.black38,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [BoxShadow(color: Colors.black38,spreadRadius: 1,blurRadius: 1)]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("${homeServiceModel.serviceName}",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w900),),
                )),
          )
        ],
      ),
    ),
  );
  Widget ItemDrawaerHome()=>SafeArea(
    child: Container(
      height: double.infinity,
      width: 250,
      decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(40))),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Container(
            height: 150,width: double.infinity,color: Color(0xffbf9b7a),
            child: Column(children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/userimage1.jpg"),
              ),
              SizedBox(height: 10,),
              Text("Email",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700),)
            ]),
          ),
          Expanded(child: Container(
              color:Colors.brown,
            child: Column(children: [
              SizedBox(height: 10,),
              Container(
                height: 40,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(children: [
                    Icon(Icons.home,color: Colors.white,),
                    SizedBox(width: 20,),
                    Text("Home",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),)
                  ]),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 40,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(children: [
                    Icon(Icons.info,color: Colors.white,),
                    SizedBox(width: 20,),
                    Text("About",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),)
                  ]),
                ),
              ),
              SizedBox(height: 10,),
              Container(height: 1,width: 200,color: Colors.white,),
              SizedBox(height: 10,),
              Container(
                height: 40,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(children: [
                    Icon(Icons.login,color: Colors.white,),
                    SizedBox(width: 20,),
                    InkWell(onTap: (){},child: Text("Logtout",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),))
                  ]),
                ),
              ),


            ]),
          ))
        ]),
      ),
    ),
  );
}