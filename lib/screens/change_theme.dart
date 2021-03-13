import 'package:flutter/material.dart';
import 'package:flutterapp/shared/share_widgets.dart';
import 'package:flutterapp/style/style.dart';
import 'package:flutterapp/theme/theme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangeTheme extends StatefulWidget {
  ChangeTheme({Key key}) : super(key: key);

  @override
  _ChangeThemeState createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {

  int selectedTheme;
  SharedPreferences prefs;
  
 
  @override
  void initState() {
    selectedTheme = 1;
    super.initState();
  }

  changeValue(int value){
    setState(() {
      selectedTheme = value;  
    });
  }


  @override
  Widget build(BuildContext context) {
     final changeTheme =  Provider.of<ThemeNotifier>(context);
    double heightSize = MediaQuery.of(context).size.height;
    double widthSize = MediaQuery.of(context).size.height;

    return Dialog(
      child: Container(
        height: heightSize * 0.3,
        width: widthSize,
        child: Container(
          margin: EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              RadioListTile(
                title: Text('Light Theme'),
                value: 1,
                groupValue: selectedTheme,
                onChanged: (val) async{
                  changeValue(val);
                 
                  print(val);
                },
              ),
              RadioListTile(
                title: Text('Dark Theme'),
                value: 2,
                groupValue: selectedTheme,
                onChanged: (val) async{
                  changeValue(val);
                  
                  print(val);
                },
              ),
              Container(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () async{
                   prefs = await SharedPreferences.getInstance();
                   prefs.setInt('theme', selectedTheme);

                  },
                child: Text('OK'),
                ),
                )
            ],
            ),
        )
      ),
      
    );
  }
}