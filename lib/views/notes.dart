import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotesViews extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.w,
              ),
              Text(
                'Notes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp
                ),
              ),
              Spacer(),
              Container(
                height: 35.h,
                width: 25.w,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.05),
                  borderRadius: BorderRadius.circular(10.r)
                ),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.search),
                ),
                
              ),
              SizedBox(
                width: 10.w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
