import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditNoteView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.w,
              ),
              Text(
                'Edit Note',
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
                  icon: Icon(Icons.check),
                ),

              ),
              SizedBox(
                width: 10.w,
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          // borderSide: BorderSide(color: Colors.red)
                        ),
                        hintText: 'title',
                        hintStyle: TextStyle(
                            color: Colors.purpleAccent[100]
                        )
                    ),

                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        // borderSide: BorderSide(color: Colors.red)
                      ),
                      hintText: 'content',

                      hintStyle: TextStyle(
                        color: Colors.purpleAccent[100],

                      ),

                    ),
                    maxLines: 5,
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
