import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeWorkPlaceWidget extends StatelessWidget {
  const HomeWorkPlaceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:const Color.fromRGBO(238, 241, 255, 1)
      ),
      child:Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              children: [
                SizedBox(width: 20.w,),
                Image.asset('assets/images/location.png',),
                SizedBox(width: 20.w,),
                Text(
                  'Home',
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.grey
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: Container(
                color: Colors.grey,
                height: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/images/Rectangle 979.png'),
                        Image.asset('assets/images/arrows.png')
                      ],
                    )
                  ],
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              children: [
                SizedBox(width: 20.w,),
                Image.asset('assets/images/circle.png',),
                SizedBox(width: 20.w,),
                Text(
                  'Work Place',
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.grey
                  ),
                )
              ],
            ),
          ),
        ],
      ) ,
    );
  }
}
