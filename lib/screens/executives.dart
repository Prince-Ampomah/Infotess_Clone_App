import 'package:flutter/material.dart';
import 'package:flutterapp/screens/executives_details.dart';
import 'package:flutterapp/style/style.dart';

class Executives extends StatefulWidget {
  @override
  _ExecutivesState createState() => _ExecutivesState();
}

Widget _buildList(BuildContext context) {
  return Card(
    margin: EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 3.0),
    elevation: 2.0,
    child: InkWell(
      onTap: () {
        showDialog(context: context, builder: (context) => ExecutiveDetails());
      },
      child: Hero(
        tag: 'to_event_details',
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.red,
                        )),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage:
                          AssetImage('assets/images/president.jpg'),
                      radius: 43.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Henry Baffour',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[700]),
                        ),
                        SizedBox(height: 5.0),
                        Text('PRESIDENT',
                            style: TextStyle(
                                fontSize: 13.0, color: Colors.grey[700]))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 55.0,
                  width: 5.0,
                  decoration: BoxDecoration(
                      color: Styles.infotessColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                      )),
                ),
                Container(
                  height: 55.0,
                  width: 5.0,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

class _ExecutivesState extends State<Executives> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => _buildList(context)));
  }
}
