import 'package:example/demo_helper.dart';
import 'package:example/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart SnackBars Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => DemoHelper.showTemplatedSnackbar(context),
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(8),
                child: const Text(
                  "Show Templated SnackBar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => DemoHelper.showCustomSnackBar(context),
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(8),
                child: const Text(
                  "Show Dismissible SnackBar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => DemoHelper.showStickySnackBar(context),
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(8),
                child: const Text(
                  "Show Sticky SnackBar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
