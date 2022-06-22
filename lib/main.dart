import 'package:confessionsearchapp_flutter/project_resources/project_colors.dart';
import 'package:flutter/material.dart';
import 'package:confessionsearchapp_flutter/project_resources/appwidevariables.dart';

void main() {
  runApp(const ConfessionSearchAppMain());
}

class ConfessionSearchAppMain extends StatelessWidget {
  const ConfessionSearchAppMain({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       useMaterial3: true,
        brightness: Brightness.light,
colorSchemeSeed: AppColors.mainAppColor
      ),
      darkTheme: ThemeData(brightness: Brightness.dark,useMaterial3: true,colorSchemeSeed: AppColors.mainAppColor),
     initialRoute: '/',
      routes: {
        '/': (context) => ConfessionSearchAppHomePage(title: 'Search'),

      },
    );
  }
}

class ConfessionSearchAppHomePage extends StatefulWidget {
  const ConfessionSearchAppHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ConfessionSearchAppHomePage> createState() => _ConfessionSearchAppHomePage();
}

class _ConfessionSearchAppHomePage extends State<ConfessionSearchAppHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),

    )
    );
  }
}
