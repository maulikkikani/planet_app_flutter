import 'package:Animator/views/screen/details.dart';
import 'package:Animator/views/screen/homepage.dart';
import 'package:Animator/views/screen/introscreen.dart';
import 'package:Animator/views/screen/spleshscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    myapp(),
  );
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: 'spleshscreen',
      routes: {
        '/': (context) => const homepage(),
        'spleshscreen' : (context) => const SpalchScreen(),
        'introscreens' : (context) => const introscreens(),
        'DetailS': (context) => const DetailS(),
      },
    );
  }
}
