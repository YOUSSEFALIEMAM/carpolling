import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarDetailsWidget extends StatelessWidget {
  const CarDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/car2.jpg'),
        SizedBox(width: 10.w,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'HatchBack',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
            SizedBox(height: 5.h,),
            Row(
              children: [
               const Icon(Icons.access_time_outlined,color: Colors.grey,),
                SizedBox(width: 5.w,),
                Text(
                    '8 mins',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              children: [
               const Icon(Icons.person,color: Colors.grey,),
                SizedBox(width: 5.w,),
                Text(
                    '2 passengers',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h,),
          ],
        ),
        Column(
          children: [
            Text(
              '7 Km',
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            TextButton(
                onPressed: (){},
                child: Text(
                  'Change Ride',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color.fromRGBO(74, 115, 218, 1),
                  ),
                )
            )
          ],
        )

      ],
    );
  }
}
