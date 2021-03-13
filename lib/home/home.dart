import 'package:flutter/material.dart';
import 'package:flutterapp/shared/share_widgets.dart';
import 'package:flutterapp/shared/tabs.dart';
import 'package:flutterapp/style/style.dart';
import '../screens/privacy_policy.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({this.title});

  @override
  _HomePageState createState() => _HomePageState();
}

int currentPage = 0;

class _HomePageState extends State<HomePage> {
  onBottomTap(index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Styles.scaffoldColor,
          floatingActionButton: FloatingActionButton(
            heroTag: 'to_privacy_policy',
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=> PrivacyPolicy()
                )
              );
            },
            backgroundColor: Styles.infotessColor,
            splashColor: Colors.white,
            child: Icon(Icons.offline_bolt) ,
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentPage,
            onTap: onBottomTap,
            selectedItemColor: Colors.red,
            unselectedItemColor: Styles.infotessColor,
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                  icon: currentPage == 0? Icon(Icons.event_available):Icon(Icons.event),
                  title: Text('Events'),
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: currentPage == 1? Icon(Icons.message): Icon(Icons.chat_bubble_outline),
                  title: Text('News'),
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: currentPage == 2? Icon(Icons.people) : Icon(Icons.people_outline),
                  title: Text('Executives'),
                backgroundColor: Colors.white
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.cloud_download),
                  title: Text('Resources'),
                  backgroundColor: Colors.white
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.import_contacts),
                  title: Text('Constitution'),
                  backgroundColor: Colors.white
              ),
            ],
          ),
          body: CustomScrollView(
            slivers: [
              ShareWidgets().sliverAppBar(context),
              SliverFillRemaining(
                child: tabs[currentPage],
              )
            ],
          ),
        ),
      ),
    );
  }
}

