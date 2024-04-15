import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.lightBlue, // Color for the app bar
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color appBarColor = Colors.lightBlue; // Default color for the app bar
  IconData appBarIcon = Icons.message; // Default icon for the app bar
  String appBarTitle = 'Days Task'; // Default title for the app bar
  Color bodyColor = Colors.white; // Default color for the body
  String bodyText = 'Hello, Flutter!'; // Default text for the body

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        leading: IconButton(
          icon: Icon(appBarIcon),
          onPressed: () {
            setState(() {
              appBarIcon = Icons.menu; // Change icon in app bar
            });
          },
        ),
        backgroundColor: appBarColor,
      ),
      body: Container(
        color: bodyColor, // Set background color of the body
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  appBarColor = Colors.orange; // Change color of app bar
                });
              },
              child: Text('Change App Bar Color'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  appBarIcon = Icons.send; // Change icon in app bar
                });
              },
              child: Text('Change Icon in App Bar'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  appBarTitle = 'New Title'; // Change title in app bar
                });
              },
              child: Text('Change Title in App Bar'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  bodyColor = Colors.blue; // Change color of the body
                });
              },
              child: Text('Change Body Color'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  bodyText = 'Changed Text'; // Change text in the body
                });
              },
              child: Text('Change Text in Body'),
            ),
          ],
        ),
      ),
    );
  }
}
