import 'package:flutter/material.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _DateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Add Card",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/images/im_sample2.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Enter Card Number",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: '8600 8463 9234 1175',
                    hintStyle: TextStyle(color: Colors.grey[700]),

                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  height: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '11/26',
                      hintStyle: TextStyle(fontSize: 25,color: Colors.grey[700]),
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            Text("* Only Visa, MasterCard issued cards supported", style: TextStyle(fontSize: 14),),

          ],
        ),
      ),
    );
  }
}
