import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryContainer extends StatelessWidget {
  const HistoryContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Container(
          decoration:const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromRGBO(234, 237, 252, 1),
          ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/Frame 10.png'),
                  SizedBox(width: 20.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'youssef',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         const Icon(
                            Icons.star,
                            color: Color.fromRGBO(234, 205, 105, 1),
                          ),
                          SizedBox(width: 5.w,),
                          Text(
                            '4.7',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),

                        ],
                      ),



                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          '50.00 EGP',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15.h,),
                      Text(
                          '2.2 Km',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 5.h,),
            Container(
              color: Colors.grey,
              height: 1,
            ),
            Row(
              children: [
                Expanded(
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              SizedBox(width: 10.w,),
                              const Icon
                                (
                                Icons.phone_rounded,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 15.w,),
                              Text(
                                  'Call Driver',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                ),
                Container(
                  color: Colors.grey,
                  height:50,
                  width: 2,
                ),
                Expanded(
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              SizedBox(width: 10.w,),
                              const Icon
                                (
                                Icons.person,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 15.w,),
                              Text(
                                  'Ride Details',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
