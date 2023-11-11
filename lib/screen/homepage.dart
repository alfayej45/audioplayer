import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../widget/music_container.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff28303b),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
        title:Text('Now Live',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 95,
            backgroundImage:AssetImage('images/assets/recordimage.jpg'),
          ),
          SizedBox(height: 10,),
          Text('Hay Libertad',style: TextStyle(fontSize: 22,color: Colors.white),),
          SizedBox(height: 5,),
          Text('Edia Rivera Condilita',style: TextStyle(fontSize: 14,color: Color(0xffa9afb6)),),
          Lottie.asset('images/musiclottieani.json',height:size.height*0.1,fit: BoxFit.fill),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 10),
            child: MusicContainer(),
          ),

        ],
      ),

    );
  }
}
