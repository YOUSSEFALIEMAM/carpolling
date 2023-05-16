import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project/trip_details/trip_details_screen.dart';
import 'package:project/widgets/co_passenger_widger.dart';
import 'package:project/widgets/driver_contianer.dart';

class RideDetailsScreen extends StatelessWidget {
  const RideDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon:const Icon(
                  Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: (){
                Get.to(TripDetailsScreen());
              },
            ),
            title: Text(
                'Arriving in 8 mins',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color:const Color.fromRGBO(38, 58, 109, 1),
                fontSize: 24.sp
            ),
            ),
          ),
          body: Padding(
            padding:const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h,),
                  Text(
                    'Driver',
                    style: TextStyle(
                      fontSize: 21.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 30.h,),
                  DriverContainer(),
                  SizedBox(height: 30.sp,),
                  Text(
                    'Co-Passenger',
                    style: TextStyle(
                        fontSize: 21.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                 SizedBox(height: 20.sp,),
                 ListView.separated(
                   shrinkWrap: true,
                     physics: const NeverScrollableScrollPhysics(),
                     itemBuilder:(context,index)=> CoPassengerWidget(),
                    separatorBuilder: (context,index)=>SizedBox(height: 15.sp,),
                    itemCount: 4,
                 ),
                 SizedBox(height: 30.h,),
                 Center(
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20),
                       ),
                       minimumSize: const Size(200, 40),

                     ),

                       onPressed: (){},
                       child: Text(
                         'view on map',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 18.sp
                         ),
                       )
                   ),
                 )
 
                ],
              ),
            ),
          ),
        )
    );
  }
}
