import 'package:flutter/material.dart';
import 'package:flutterapp/Utils/utils.dart';
import 'package:flutterapp/screens/about_us.dart';
import 'package:flutterapp/screens/change_theme.dart';
import 'package:flutterapp/screens/privacy_policy.dart';
import 'package:flutterapp/style/style.dart';

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class ShareWidgets{

  Widget sliverAppBar(BuildContext context){
   return SliverAppBar(
      title: Text(
        'Infotess Online',
        style: TextStyle(fontSize: 17.0),
      ),
      backgroundColor: Styles.infotessColor,
      pinned: false,
      floating: true,
      elevation: 0.0,
      actions: [
        popUpButton(context),
      ],
    );
  }

static PopupMenuButton popUpButton(BuildContext context){
  return PopupMenuButton(
    itemBuilder: (context){
      return Utils.menuitems.map((String items) {
        return PopupMenuItem(
            value: items,
            child: Text(items),
        );
      }).toList();
    },
    onSelected: (value){
      changeRoute(value, context);
    }
  );

}

static showSnackBar(String content){
  SnackBar snackbar = SnackBar(
    content: Text(
        content,
        textAlign: TextAlign.center,
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    
  );
scaffoldKey.currentState.showSnackBar(snackbar);
}


}


void changeRoute(String menuItems, BuildContext context){
  switch (menuItems){
    case Utils.ABOUTUS:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context)=> AboutUs()
        )
      );
      break;

    case Utils.PRIVACY_POLICY:
       Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context)=> PrivacyPolicy()
        )
      );
      break;

    case Utils.THEME: 
      showDialog(context: context, builder: (context)=> ChangeTheme());
        break;
  }
}

