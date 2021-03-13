import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/home/home.dart';
import 'package:flutterapp/theme/theme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SharedPreferences prefs;

  @override
  void initState() {
    loadTheme();
    super.initState();
  }

  loadTheme() async{
    prefs = await SharedPreferences.getInstance();
    prefs.getInt('theme');
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return ChangeNotifierProvider<ThemeNotifier>(
          create: (_)=> ThemeNotifier(ThemeData.light()),
          child: MaterialAppTheme(),
    );
  }
}

class MaterialAppTheme extends StatelessWidget {
  const MaterialAppTheme({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
    title: 'Infotess Online',
    debugShowCheckedModeBanner: false,
    theme: theme.getTheme(),
    home: HomePage(title: 'Infotess Online')
    );
  }
}
