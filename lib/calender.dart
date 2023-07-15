import 'package:doc_app/settings/colors.dart';
import 'package:doc_app/settings/size.dart';
import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100,right: 20,left: 20),
        width: Sizes.width(context),
        height: Sizes.height(context),
        child: SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              /// Header
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("Schedule",style: TextStyle(color: textColor,fontSize: 23,fontWeight: FontWeight.bold),),
IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month,color: text2Color,))
  ],
),
              
              /// Calender
Container(
  margin: EdgeInsets.only(bottom: 25),
  padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
  height: 100,
  width: Sizes.width(context),
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      Container(
        height: 80,
        width: 70,
     margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: darkColor,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('12',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            Text('Tue',style: TextStyle(color: Colors.white,fontSize: 17,)),
          ],
        ),
      ),
      Container(
        height: 80,
        width: 70,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('13',style: TextStyle(color: textColor,fontSize: 20,fontWeight: FontWeight.bold),),
            Text('Wed',style: TextStyle(color: textColor,fontSize: 17,)),
          ],
        ),
      ),
      Container(
        height: 80,
        width: 70,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('14',style: TextStyle(color: textColor,fontSize: 20,fontWeight: FontWeight.bold),),
            Text('Thu',style: TextStyle(color: textColor,fontSize: 17,)),
          ],
        ),
    
      ),
      Container(
        height: 80,
        width: 70,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(20)
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('15',style: TextStyle(color: textColor,fontSize: 20,fontWeight: FontWeight.bold),),
            Text('Fri',style: TextStyle(color: textColor,fontSize: 17,)),
          ],
        ),
    
      ),
      Container(
        height: 80,
        width: 70,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(20)
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('16',style: TextStyle(color: textColor,fontSize: 20,fontWeight: FontWeight.bold),),
            Text('Sat',style: TextStyle(color: textColor,fontSize: 17,)),
          ],
        ),
    
      ),

    ],
  ),
),
              // 'assets/zim.png'
              /// Cards
              cardCalender(shadow: true, backColor: darkColor, img: 'assets/zim.png', time: "12:00 PM", isDark: true),
              cardCalender(shadow: false, backColor: Color(0xffF1E6EA), img: 'assets/shahin.png', time: "11:00 PM", isDark: false),
              cardCalender(shadow: false, backColor: Color(0xffFAF0DB), img: 'assets/mim.png', time: "10:00 PM", isDark: false)

            ],
          ) ,
        ),
      ),
    );
  }
  Column cardCalender({required bool shadow, required Color backColor, required String img,required String time,required isDark}){
    return       Column(
      children: [
        Container(
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child:    Row(
              children: [
                Text("$time ",style: TextStyle(color: text2Color,fontWeight: FontWeight.w500,fontSize: 12),),
                Text("--"*24,style: TextStyle(color: text2Color),),
              ],
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 15,bottom: 15),
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          width: Sizes.width(context)*0.9,
          height: 120,
          decoration: BoxDecoration(
              color: backColor,
              borderRadius: BorderRadius.circular(30),
              boxShadow:shadow? [
                   BoxShadow(
                  color: darkColor.withOpacity(0.7),
                  blurRadius: 20,
                )
              ]:null
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Container(

                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(img)
                      )
                  ),

                ),
                SizedBox(width: 20,) ,
                Container(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('09:30 AM',style: TextStyle(color:isDark? Colors.white:textColor,fontSize: 15,fontWeight: FontWeight.w100),),
                      Text('Dr. Mim Akhter',style: TextStyle(color: isDark? Colors.white:textColor,fontSize: 17,fontWeight: FontWeight.bold)),
                      Text('Depression',style: TextStyle(color:isDark? Colors.white:textColor,fontSize: 14,fontWeight: FontWeight.w100)),

                    ],
                  ),
                ),
              ],),
              Container(
                alignment: Alignment.topRight,
                width: 40,
                child:  Icon(Icons.menu,size: 20,color: isDark?Colors.white.withOpacity(0.5):textColor,),
              ),
            ],
          ),
        ),


      ],
    );
  }
}
