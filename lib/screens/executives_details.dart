import 'package:flutter/material.dart';
import 'package:flutterapp/style/style.dart';

class ExecutiveDetails extends StatefulWidget {
  @override
  _ExecutiveDetailsState createState() => _ExecutiveDetailsState();
}

class _ExecutiveDetailsState extends State<ExecutiveDetails> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'to_event_details',
      child: Dialog(
        child: Container(
          color: Styles.infotessColor,
          height: 410.0,
          child: Column(
            children: [
              Container(
                height: 40.0,
                color: Colors.red,
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red)),
                child: CircleAvatar(
                  backgroundColor: Styles.infotessColor,
                  backgroundImage: AssetImage('assets/images/president.jpg'),
                  radius: 105.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Column(
                children: [
                  Text('Prince Ampomah',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'GENERAL SECRETARY',
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                '0550935558',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
