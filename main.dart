import 'package:flutter/material.dart';
import 'package:totalbill/main_page.dart';
import 'package:totalbill/testbillwidget.dart';
import 'package:totalbill/total_bill.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: mainPage(),
      home: testBill(),
    );
  }
}

// ListTile(
//                             // leading: CircleAvatar(
//                             //   child: Text(new_data[index]['name']),
//                             // ),
//                             title: Text(new_data[index]['name']),
//                             trailing: Text(new_data[index]['price']),
//                           ),