// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:note_app/sqldb.dart';
//
// class HomeScreen extends StatelessWidget {
//
//   sqldb sqlDb=sqldb();
//   Future<List<Map?>> readData() async
//   {
//      List<Map?>response=await sqlDb.readData('SELECT * FROM notes');
//      return response;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text(
//           'Home page'
//         ),
//       ),
//       body: Container(
//        child: ListView(
//          children: [
//            FutureBuilder(
//                future: readData(),
//                builder: (BuildContext context,AsyncSnapshot<List<Map?>>snapshot)
//                {
//                   if(snapshot.hasData)
//                     {
//
//                       return ListView.builder(
//
//                           physics: NeverScrollableScrollPhysics(),
//                           shrinkWrap: true,
//                           itemCount: snapshot.data?.length,
//                           itemBuilder: (context,index){
//                             return Text('${snapshot.data?[index]}');
//                       });
//
//                     }
//                   else
//                     {
//                         return Center(child: CircularProgressIndicator());
//                     }
//            }
//            )
//          ],
//        ),
//       ),
//       // body: Column(
//       //  // crossAxisAlignment: CrossAxisAlignment.center,
//       //   children: [
//       //     SizedBox(
//       //       height: 20.h,
//       //     ),
//       //     Center(
//       //       child: MaterialButton(
//       //         onPressed: ()async
//       //         {
//       //           int response=await sqlDb.insertData('INSERT INTO \'notes\'(note) values (\"note two\") ');
//       //           print(response);
//       //         },
//       //         child: Text(
//       //           'insert data',
//       //           style: TextStyle(
//       //             color: Colors.white,
//       //             fontSize: 9.sp
//       //           ),
//       //         ),
//       //         color: Colors.orange,
//       //       ),
//       //     ),
//       //     SizedBox(
//       //       height: 10.h,
//       //     ),
//       //     Center(
//       //       child: MaterialButton(
//       //         onPressed: () async
//       //         {
//       //           List<Map> response=await sqlDb.readData('select * from notes');
//       //           print(response);
//       //         },
//       //         color: Colors.orange,
//       //         child: Text(
//       //           'read data',
//       //
//       //           style: TextStyle(
//       //               color: Colors.white,
//       //               fontSize: 9.sp
//       //           ),
//       //         ),
//       //       ),
//       //     ),
//       //   ],
//       // ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Note App'
        ),
        backgroundColor: Colors.teal,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add,),
        backgroundColor: Colors.teal[300],
      ),
    );
  }
}
