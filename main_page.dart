import 'package:flutter/material.dart';
import 'package:totalbill/total_bill.dart';

class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 20,
              child: const Text("Your Total Bill is"),
            ),
            SizedBox(
              height: 300.0,
              child: totalBill(),
            ),
            Container(
              height: 2,
              color: Colors.purple,
            ),
            Container(
              height: 200,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
