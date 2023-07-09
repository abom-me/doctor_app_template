import 'package:auto_size_text/auto_size_text.dart';
import 'package:doc_app/settings/colors.dart';
import 'package:doc_app/settings/size.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Sizes.width(context),
        height: Sizes.height(context),
        padding: EdgeInsets.only(top: 100,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("👋 Hello !",style: TextStyle(color: textColor,fontSize: 15),),
                    Text("Ahmed Salim",style: TextStyle(color: textColor,fontSize: 20,fontWeight: FontWeight.w600),),
                  ],
                ),
                
               
                Container(
              
                  width: 50,
                  height: 50,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                    
                      Image.asset("assets/profile.png"),
                      Container(
                        width: 15,
                        height: 15,
                       
                        decoration: BoxDecoration(
                          color: darkColor,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white,width: 3)
                        ),
                      ),
                    ],),
                )
                
              ],
            ),
            
            
            /// Search Box
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
              margin: const EdgeInsets.only(top: 40,bottom: 40),
              width: Sizes.width(context),
              height: 70,
             
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(20)
              ),
              child:   TextField(
                decoration: InputDecoration(
                  
                  border: InputBorder.none,
                  hintText: 'Search medical...',
                  hintStyle: TextStyle(color: text2Color,fontWeight: FontWeight.w200,fontSize: 17),
                  prefixIcon: Icon(Icons.search,color: text2Color,size: 40,),
                  suffixIcon: Icon(Icons.filter_alt_rounded,color: textColor,size: 30,)
                ),
              ),
            ),
            
            
            /// Services
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Services',style: TextStyle(fontSize: 25,color: textColor,fontWeight: FontWeight.w500),),
             SizedBox(
               height: 20,
             ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                topCard(cardColor: mainColor, image: 'assets/doctoricon.png', onTap: () { print('card1'); }),
                topCard(cardColor: Color(0xffFAF0DB), image: 'assets/card2.png',onTap: () { print('card2'); }),
                topCard(cardColor: Color(0xffD6F6FF), image: 'assets/card3.png',onTap: () { print('card3'); }),
                topCard(cardColor: Color(0xffF2E3E9), image: 'assets/card4.png',),
               ],
             )
             
              ],
            ),
            
            /// Main Card
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
              margin: const EdgeInsets.only(top: 40,bottom: 20),
              width: Sizes.width(context),
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.bottomRight,
                    image: AssetImage('assets/maincard.png')
                  
                ),
                color: mainColor,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                children: [
                  /// Text
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                  Container(
                      width: 180,
                    child:    AutoSizeText('''Get the Best Medical Service ''',maxLines:2,style: TextStyle(color: textColor,fontSize: 18,
                        fontWeight: FontWeight.w600),),
                  ),
                     Container(
                         width: 200,
                         child: AutoSizeText('''Lorem Ipsum is simply dummy text of the printing  ''',
                           maxLines:2,style: TextStyle(color: textColor,fontSize: 10,
                               fontWeight: FontWeight.w100),)),
                   ],
                 ),
                  
                
                ],
              ),
            ),

            /// Upcoming Appointments
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Upcoming Appointments',style: TextStyle(fontSize: 25,color: textColor,fontWeight: FontWeight.w500),),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bottomCard(cardColor: darkColor,cardSecColor: Colors.white.withOpacity(0.2)),
                      SizedBox(width: 20,),
                      bottomCard(cardColor: Color(0xffFAF0DB),cardSecColor: Color(0xffE09F1F))

                    ],
                  ),
                )

              ],
            ), 
            
          ],
        ) ,
      ),
    );
    
  }
  InkWell topCard({
    required Color cardColor,
    required String image,
     GestureTapCallback? onTap
  }){
   return InkWell(
   onTap: onTap,
     child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(25)
        ),
        child: Image.asset(image),
      ),
   );
  }
  
  InkWell bottomCard({
    required Color cardColor,
    required Color cardSecColor,

     GestureTapCallback? onTap
  }){
   return InkWell(
   onTap: onTap,
     child: Container(
       padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        width: Sizes.width(context)*0.7,
        height: 120,
        decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(30)
        ),
    child: Row(
      children: [
        Container(
       
          width: 70,
          height: 130,
          decoration: BoxDecoration(
            color: cardSecColor,
            borderRadius: BorderRadius.circular(30)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('12',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              Text('Tue',style: TextStyle(color: Colors.white,fontSize: 17,)),
            ],
          ),
        ),
       SizedBox(width: 20,) ,
        Container(
         
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('09:30 AM',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w100),),
              Text('Dr. Mim Akhter',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold)),
              Text('Depression',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w100)),
              
            ],
          ),
        ),
        Container(
          alignment: Alignment.topRight,
         width: 40,
          child:  Icon(Icons.menu,size: 20,color: Colors.white.withOpacity(0.5),),
        ),
      ],
    ),
      ),
   );
  }
  
  
}
