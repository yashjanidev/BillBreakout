import 'dart:convert';

import 'package:flutter/material.dart';

// This file contains First Widget which is Size

class totalBill extends StatefulWidget {
  late List data;

  @override
  State<totalBill> createState() => totalBillState();
}

class totalBillState extends State<totalBill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          // Use future builder and DefaultAssetBundle to load the local JSON file
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/images/sizeNumber.json'),
            builder: (context, snapshot) {
              // Decode the JSON
              var new_data = json.decode(snapshot.data.toString());

              return Scaffold(
                body: Container(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                "YOUR TOTAL BILL",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.perm_device_info_rounded,
                                size: 15,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Subtotal:",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "₹57,165.00",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Discount:",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "₹200.00",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Shipping charges:",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "₹49.00",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Estimated Tax:",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "₹2,850.00",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tota Amount:",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "₹54,163.00",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      );
                    },
                    itemCount: new_data == null ? 0 : new_data.length,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
