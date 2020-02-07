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
      },
    );
  }
}

final Map appData = const {
  1: {
    'id': 1,
    'title': 'Thursday - Steps Ascending',
    'cover': 'thursday.jpg',
    'channelName': 'ThursdayOfficial',
    'views': '352K',
    'uploadDate': '5 years ago',
    'subscribers': '2.5M'
  },
  2: {
    'id': 2,
    'title': 'Deftones - Minerva',
    'cover': 'deftones.jpg',
    'channelName': 'DeftonesVEVO',
    'views': '20M',
    'uploadDate': '8 years ago',
    'subscribers': '5.3M',
  },
  3: {
    'id': 3,
    'title': 'Tool - Descending (live)',
    'cover': 'tool.jpg',
    'channelName': 'TOOL',
    'views': '32M',
    'uploadDate': '3 months ago',
    'subscribers': '9.3M',
  },
  4: {
    'id': 4,
    'title': 'Trivium - Down from the sky',
    'cover': 'trivium.jpeg',
    'channelName': 'TriviumOfficial',
    'views': '18M',
    'uploadDate': '6 years ago',
    'subscribers': '1.7M',
  },
  5: {
    'id': 5,
    'title': 'Thrice - Image of the invicible',
    'cover': 'thrice.jpeg',
    'channelName': 'ThriceVEVO',
    'views': '5M',
    'uploadDate': '4 years ago',
    'subscribers': '678K',
  },
};


