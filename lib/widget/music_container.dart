import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class MusicContainer extends StatefulWidget {
  const MusicContainer({Key? key}) : super(key: key);

  @override
  State<MusicContainer> createState() => _MusicContainerState();
}

class _MusicContainerState extends State<MusicContainer> {


 Duration duration=Duration.zero;
 Duration position=Duration.zero;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      height: size.height*0.35,
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff0a121d)
      ),
      child: Column(
        children: [
         Padding(
           padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('${formatTime(duration)}',style: TextStyle(color: Colors.white),),
               Text(formatTime(position-duration),style: TextStyle(color: Colors.white)),
             ],
           ),
         ),
          Slider(
              min: 0,
              max: duration.inSeconds.toDouble(),
              value: duration.inSeconds.toDouble(),
              onChanged: (c){

              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.replay_outlined,color: Colors.white,),
              SvgPicture.asset('images/assets/leftarrow.svg',height: 35,width: 35,color: Colors.white,),
               CircleAvatar(
                 radius: 35,
                 backgroundColor: Color(0xff316bfa),
                 child: Center(
                   child: Icon(Icons.play_arrow,color: Colors.white,size: 35,),
                 ),
               ),
              SvgPicture.asset('images/assets/rightarrow.svg',height: 35,width: 35,color: Colors.white,),
              Icon(Icons.shuffle,color: Colors.white,),


            ],
          ),
          Row(
            children: [

              Row(
                children: [
                  

                ],
              )
            ],
          )

        ],
      ),
    );
  }

 String formatTime(Duration duration){
    String towDigit(int n)=>n.toString().padLeft(2,'0');
    final hours=towDigit(duration.inHours);
    final minnutes=towDigit(duration.inMinutes.remainder(60));
    final secend=towDigit(duration.inSeconds.remainder(60));

    return [
      if(duration.inHours>0)
        hours,
      minnutes,
      secend

    ].join(':');
  }
}
