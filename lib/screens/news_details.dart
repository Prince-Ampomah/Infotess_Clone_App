import 'package:flutter/material.dart';
import 'package:flutterapp/style/style.dart';

class NewsDetails extends StatefulWidget {
  @override
  _NewsDetailsState createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Infotess Online',
            style: TextStyle(fontSize: 17.0),
          ),
          elevation: 0.0,
          backgroundColor: Styles.infotessColor,
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              width: MediaQuery.of(context).size.width,
              height: 80.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Anouncement! Anouncement!!\nAnouncement!!!',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  Divider(color: Colors.red)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 80.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Text(
                    'Software: Software is another component of information system. Hardware and software depend on each other to function.\n'
                    'The hardware needs to know what do and that is the role of software. Software can be grouped into two thus, \n'
                    'system and application software. The primary piece of system software is the \n'
                    'operation system (OS) which includes Windows, Linux, IOS, Ubuntu, etc. \n'
                    'These system software managers the hardware’s operation. On the other hand,\n application software is designed specifically for special task such as word document, web browsers, etc. ',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black38,
                    )),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              left: 0.0,
              child: Container(
                color: Styles.infotessColor,
                height: 55.0,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Write a comment',
                        style: TextStyle(fontSize: 17.0, color: Colors.white),
                      ),
                      Icon(
                        Icons.view_headline,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
