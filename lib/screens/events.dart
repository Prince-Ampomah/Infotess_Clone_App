import 'package:flutter/material.dart';
import 'package:flutterapp/screens/event_details.dart';
import 'package:flutterapp/style/style.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

Widget _buildList(BuildContext context) {
  return Card(
    margin: EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 3.0),
    elevation: 2.0,
    child: InkWell(
      onTap: () {
        showDialog(context: context, builder: (context)=>EventDetails());
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.event,
                  size: 16.0,
                  color: Colors.red,
                ),
                SizedBox(width: 5),
                Text(
                  'Event',
                  style: Styles.iconTextStyle,
                )
              ],
            ),
            Container(
                margin: EdgeInsets.all(3.0),
                child: Text(
                  'APONKYE GALA',
                  style: Styles.eventTitleStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 16.0,
                      color: Colors.red,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Location',
                      style: Styles.iconTextStyle,
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.attach_money,
                      size: 16.0,
                      color: Colors.red,
                    ),
                    Text('Free', style: TextStyle(color: Colors.red),)
                  ],
                )
              ],
            ),
            Container(
                margin: EdgeInsets.all(3.0),
                child: Text(
                  'School field',
                  style: Styles.locationStyle,
                )),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.info_outline,
                  size: 16.0,
                  color: Colors.red,
                ),
                SizedBox(width: 5),
                Text(
                  'Information',
                  style: Styles.iconTextStyle,
                )
              ],
            ),
            Container(
                margin: EdgeInsets.all(3.0),
                child: Text(
                  'Main Content Goes In Here....',
                  style: Styles.contentStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    ),
  );
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => _buildList(context),
    ));
  }
}

//SliverList(
//delegate: SliverChildBuilderDelegate(
//(context, index){
//return _buildList();
//},
//childCount: 20
//)
//),
