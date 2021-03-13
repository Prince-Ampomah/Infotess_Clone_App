import 'package:flutter/material.dart';
import 'package:flutterapp/style/style.dart';

class Resources extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Infotess Electoral Commission Disclaimer',
                  style: TextStyle(
                  color: Styles.infotessColor,
                  fontSize: 12.0,
                    fontWeight: FontWeight.bold
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('637 kb'),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.folder, color: Styles.infotessColor,),
                          ),
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.file_download, color: Styles.infotessColor),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
