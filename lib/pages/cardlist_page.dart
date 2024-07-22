import 'package:exam/pages/addcard.dart';
import 'package:flutter/material.dart';

class CardlistPage extends StatefulWidget {
  const CardlistPage({super.key});

  @override
  State<CardlistPage> createState() => _CardlistPageState();
}

class _CardlistPageState extends State<CardlistPage> {


  _openAddCardPage(){
Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
  return AddCardPage();
}));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Card List", style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        children: [
          makeCard(
            image: "assets/images/im_sample2.png",
            cardNum1: "**** **** ****",
            cardNum2: "9275",
            years: "11/25",
          ),

          makeCard(
            image: "assets/images/im_sample2.png",
            cardNum1: "**** **** ****",
            cardNum2: "4523",
            years: "12/25",
          ),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(25),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: MaterialButton(
            height: 60,
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              _openAddCardPage();
            },
            child: Text("Add Card"),
          ),
        ),
      ),

    );
  }

  Widget makeCard({image, cardNum1, cardNum2, years,
  }) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Row(
        children: [
          Container(
            height: 60,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(width: 15),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$cardNum1 $cardNum2",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                years,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
