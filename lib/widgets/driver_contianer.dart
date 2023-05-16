import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DriverContainer extends StatelessWidget {
  const DriverContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color.fromRGBO(234, 237, 252, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/Frame 10.png'),
                SizedBox(width: 10.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                            'youssef ali',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        Icon(Icons.person,color: Colors.grey,),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        Image.asset('assets/images/car1.png'),
                        SizedBox(width: 6.sp,),
                        Text(
                            'nagjandbg',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.grey
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                        '4.8',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(width: 4.sp,),
                    const Icon(
                      Icons.star,
                      color: Color.fromRGBO(234, 205, 105, 1),
                    )

                  ],
                ),
               ],
            ),
            SizedBox(height: 15.h,),
            Container(
              color: Colors.grey,
              height: 1,
            ),
            Row(
              children: [
                Expanded(
                    child: Center(
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(
                          child:
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                                'View Details',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.sp
                              ),
                            ),
                          ) ,
                        ),
                      ),
                    )),
                Container(
                  color: Colors.grey,
                  height: 40,
                  width: 2,
                ),
                Expanded(
                    child: Center(
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          child:
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text
                              (
                                'Call',
                              style: TextStyle(
                                color: Color.fromRGBO(74, 115, 218, 1),
                                fontSize: 16.sp
                              ),
                            ),
                          ) ,
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
