import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            pageIndex = index;
          });
        },
        selectedIndex: pageIndex,
        destinations: const<Widget>[
          NavigationDestination(
              icon: Icon(Icons.content_copy),
              label: 'Swipe & Sort'
          ),
          NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          NavigationDestination(
              icon: Icon(Icons.email),
              label: 'Inbox'
          )
        ],
      ),
      body:
        <Widget>[
          const Center(child: Text("Swipe & Sort")),
          const Center(child: Text("Home")),
          const Center(child: Text("Inbox"))
        ][pageIndex],
    );
  }
}
