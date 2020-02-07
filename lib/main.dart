import 'package:flutter/material.dart';
import 'package:youtube_ui/screens/home/index.dart';
import 'package:youtube_ui/screens/video/index.dart';
import 'screens/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        HomeScreen.routeName: (context) => MainContainer(widget: HomeScreen()),
        VideoScreen.routeName: (context) => MainContainer(
          widget: VideoScreen(
            title: 'Thursday - Steps Ascending',
            views: '967k',
            cover: 'thursday.jpg',
            channelName: 'ThursdayVEVO',
            subscribers: '2.4M',
          ),
        ),
      }
    );
  }
}


