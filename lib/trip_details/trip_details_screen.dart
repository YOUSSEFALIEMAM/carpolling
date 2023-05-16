import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/trip_details/widgets/car_details_widget.dart';
import 'package:project/trip_details/widgets/home_workplace_widget.dart';

class TripDetailsScreen extends StatelessWidget {
  const TripDetailsScreen({Key? key}) : super(key: key);

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
            onPressed: (){},
          ),
          title: Text(
            'Arriving 8 mins',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(38, 58, 109, 1),
          ),
          ),
        ),
        body: Padding(
          padding:const EdgeInsets.all(20),
          child: Column(
            children: [
              HomeWorkPlaceWidget(),
              Padding(
                padding:const  EdgeInsets.all(50),
                child: Container(
                  color: Colors.grey,
                  height: 1,
                ),
              ),
              CarDetailsWidget(),
              SizedBox(height: 5,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 90),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  height: 1,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 30.h,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color:const Color.fromRGBO(234, 237, 252 , 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                    'White Swift',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                      color: Colors.black
                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Image.asset('assets/images/car3.png')
                              ],
                            ),
                            SizedBox(width: 10.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                    'DL5CAB',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp
                                ),
                                ),
                                SizedBox(height: 5.h,),
                                Text(
                                    '1234',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                        'john Doe',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    SizedBox(height: 5.h,),
                                    Row(
                                      children: [
                                       const Icon(
                                          Icons.star,
                                          color: Color.fromRGBO(234,205,105,1),
                                        ),
                                        Text(
                                            '2.4',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold
                                        ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: 5.w,),
                                Image.asset('assets/images/person.png'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 5.h,),
                        Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  const Icon(Icons.phone,color: Colors.grey,),
                                  Text(
                                    'Call Driver',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                  ),
                                  )
                                ],
                              ),
                            ),
                                )
                            ),
                            Container(
                              height: 50,
                              color: Colors.grey,
                              width: 2,
                            ),
                            Expanded(
                                child: Container(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  const Icon(Icons.cancel,color: Colors.grey,),
                                  Text(
                                    'Cancel Ride',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                  ),
                                  )
                                ],
                              ),
                            ),
                                )
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
