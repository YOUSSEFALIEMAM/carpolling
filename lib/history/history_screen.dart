import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project/widgets/history_continer.dart';

import '../ride_details/ride_details_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text(
                'History',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(38, 58, 109, 1),
                  fontSize: 24.sp
                ),
              ),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: (){
                  Get.to(RideDetailsScreen());
                },
              ),
            ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                     Expanded(
                       child: Container(
                         decoration:const BoxDecoration(
                           color: Color.fromRGBO(223, 228, 255, 1),
                           borderRadius: BorderRadius.all(Radius.circular(20))
                         ),
                         child: Padding(
                           padding: EdgeInsets.all(10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                              Image.asset('assets/images/car.png'),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(
                                       'Total Rides',
                                     style: TextStyle(
                                       color: Colors.grey,
                                       fontSize: 14.sp
                                     ),
                                   ),
                                   SizedBox(height: 5.sp,),
                                   Text(
                                       '13',
                                     style: TextStyle(
                                       color: Colors.grey,
                                       fontSize: 24.sp
                                     ),
                                   ),
                                 ],
                               )
                             ],
                           ),
                         ),
                       ),
                     ),
                     SizedBox(width: 5.sp,),
                     Expanded(
                       child: Container(

                         decoration:const BoxDecoration(
                           color: Color.fromRGBO(150, 175, 240, 1),
                           borderRadius: BorderRadius.all(Radius.circular(20))
                         ),
                         child: Padding(
                           padding: EdgeInsets.all(10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               SizedBox(width: 10.sp,),
                               Image.asset('assets/images/Vector (1).png'),
                               SizedBox(width: 15.sp,),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(
                                       'Total Cost',
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 14.sp
                                     ),
                                   ),
                                   SizedBox(height: 5.sp,),
                                   Text(
                                       '920 EGP',
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 24.sp
                                     ),
                                   ),
                                 ],
                               )
                             ],
                           ),
                         ),
                       ),
                     ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index)=>HistoryContainer(),
                  itemCount: 10,
                )
              ],
            ),
          ),
        )
    );
  }
}
