import 'package:flutter/material.dart';
import 'package:flutterapp/screens/news_details.dart';
import 'package:flutterapp/style/style.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

Widget _buildList(BuildContext context) {
  return Card(
    margin: EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 3.0),
    elevation: 2.0,
    child: InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NewsDetails()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 13.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'URGENT NOTICE TO ALL STUDENTS',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                  color: Styles.infotessColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400),
            ),
            Divider(
              color: Colors.red,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                  'Software: Software is another component of information system. Hardware and software depend on each other to function.\n'
                  'The hardware needs to know what do and that is the role of software. Software can be grouped into two thus, \n'
                  'system and application software. The primary piece of system software is the \n'
                  'operation system (OS) which includes Windows, Linux, IOS, Ubuntu, etc. \n'
                  'These system software managers the hardware’s operation. On the other hand, application software is designed specifically for special task such as word document, web browsers, etc. ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black38,
                      letterSpacing: 0.2)),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'General News',
                    style:
                        TextStyle(fontSize: 11.5, color: Styles.infotessColor),
                  ),
                  Text(
                    'September 14',
                    style:
                        TextStyle(fontSize: 11.5, color: Styles.infotessColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) => _buildList(context)),
    );
  }
}
