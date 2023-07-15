import 'package:doc_app/calender.dart';
import 'package:doc_app/home.dart';
import 'package:doc_app/settings/colors.dart';
import 'package:doc_app/settings/size.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pages=[
      /// index =0
      Home(),
      /// index =1

      Calender()
    ];
    return Scaffold(

      body: Container(
        width: Sizes.width(context),
        height: Sizes.height(context),
        child: Stack(
          children: [
            pages[index],
          Positioned(
            bottom: 0,
              child:   Container(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            width: Sizes.width(context),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    index=0;
                  });
                }, icon: Column(
                  children: [
                    Icon(Icons.home,color:index==0?darkColor :text2Color,),
                    Text("Home",style: TextStyle(color:index==0?darkColor : text2Color),)
                  ],
                )),
                IconButton(onPressed: (){
                  setState(() {
                    index=1;
                  });
                }, icon: Column(
                  children: [
                    Icon(Icons.calendar_month,color: index==1?darkColor:text2Color,),
                    Text("Schedule",style: TextStyle(color:index==1?darkColor: text2Color),)
                  ],
                )),
                IconButton(onPressed: (){}, icon: Column(
                  children: [
                    Icon(Icons.newspaper,color: text2Color,),
                    Text("Report",style: TextStyle(color: text2Color),)
                  ],
                )),
                IconButton(onPressed: (){}, icon: Column(
                  children: [
                    Icon(Icons.notifications,color: text2Color,),
                    Text("Notification",style: TextStyle(color: text2Color),)
                  ],
                )),
              ],
            ),
          ))
          ],
        ),
      ),
    );
  }
}
