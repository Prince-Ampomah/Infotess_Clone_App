import 'package:flutter/material.dart';
import 'package:flutterapp/theme/theme.dart';
import 'package:provider/provider.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

bool activated = false;

toggleSwitch() {
  activated = !activated;
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // body: Center(child: Consumer<ThemeChanger>(
        //   builder: (context, ThemeChanger notifier, child) {
        //     return SwitchListTile.adaptive(
        //       value: notifier.darkTheme,
        //       onChanged: (val) {
        //         notifier.toggleTheme();
        //       },
        //       title: Text('Enable Dark Mode'),
        //     );
        //   },
        // )),
      ),
    );
  }
}
