import 'package:flutter/material.dart';
import 'package:flutterapp/style/style.dart';

class EventDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40,
                color: Colors.red,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                child: Container(
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
                            'Software: Software is another component of information system. Hardware and software depend on each other to function.\n'
                                'The hardware needs to know what do and that is the role of software. Software can be grouped into two thus, \n'
                                'system and application software. The primary piece of system software is the \n'
                                'operation system (OS) which includes Windows, Linux, IOS, Ubuntu, etc. \n'
                                'These system software managers the hardware’s operation. On the other hand, application software is designed specifically for special task such as word document, web browsers, etc. ',
                            style: Styles.contentStyle,

                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
