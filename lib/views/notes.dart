import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app/views/edit_note_view.dart';

class NotesViews extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              context: context,
              builder: (context){
                return AddNoteBottonSheet();
              }
          );
        },
        child: Icon(Icons.add)
      ),
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16
              ),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                  itemBuilder: (context,index)
                  {
                    return NoteItem();
                   },
                  itemCount: 5,
              ),
            ),
          ),

        ],
      ),
    );
  }
}



class NoteItem extends StatelessWidget {
  //const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 16,
        vertical: 5
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>EditNoteView())
          );
        },
        child: Container(
          // height: 200.h,
          // width: 200.w,
          padding: EdgeInsetsDirectional.only(
            top: 20.h,
            bottom: 20.h,
            start: 10.w
          //  horizontal: 20.w,
          //  vertical: 20.h
          ),
          decoration: BoxDecoration(
            color: Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(10.r)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
        
        
        
                title: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 16
                  ),
                  child: Text(
                    'Flutter Tips',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                    //  fontWeight: GoogleFonts.poppins
        
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 16
                  ),
                  child: Text(
                    'Build your career with ranoda',
                    style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.delete,color: Colors.black,size: 16.sp,),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  end: 24
                ),
                child: Text(
                  'May21 , 2022',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontSize: 8.sp
        
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class AddNoteBottonSheet extends StatefulWidget {


  @override
  State<AddNoteBottonSheet> createState() => _AddNoteBottonSheetState();
}

class _AddNoteBottonSheetState extends State<AddNoteBottonSheet> {

  final GlobalKey<FormState> formkey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16
      ),
      child: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              TextFormField(
                onSaved: (value){
                  title=value;
                },
                validator: (value){
                  if(value?.isEmpty ??true)
                    {
                      return 'Field is required';
                    }
                },
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
              TextFormField(
                onSaved: (value){
                  subtitle=value;
                },
                validator: (value){
                  if(value?.isEmpty?? true)
                    {
                      return 'Field is required';
                    }
                },
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
              // Spacer(),
              SizedBox(
                height: 40.h,
              ),
              GestureDetector(
                onTap: (){
                  if(formkey.currentState!.validate())
                    {
                      formkey.currentState!.save();
                    }
                  else
                    {
                      autovalidateMode=AutovalidateMode.always;
                    }
                },
                child: Container(
                  height: 40.h,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(10.r)
                  ),

                  child: Center(
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.black
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}


