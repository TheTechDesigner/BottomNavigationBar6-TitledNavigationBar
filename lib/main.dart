import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'BottomNavigationBar';

  bool _reverse = false;

  final List<TitledNavigationBarItem> items = [
    TitledNavigationBarItem(
      icon: Icons.home,
      title: Text('Home'),
    ),
    TitledNavigationBarItem(
      icon: Icons.category,
      title: Text('Category'),
    ),
    TitledNavigationBarItem(
      icon: Icons.search,
      title: Text('Search'),
    ),
    TitledNavigationBarItem(
      icon: Icons.shopping_cart,
      title: Text('Cart'),
    ),
    TitledNavigationBarItem(
      icon: Icons.person,
      title: Text('Profile'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Reverse', style: TextStyle(fontSize: 32.0),),
            Switch(
              activeColor: Color(0xFFC41A3B),
              activeTrackColor: Color(0xFF1B1F32),
              inactiveTrackColor: Colors.orange,
              inactiveThumbColor: Color(0xFF1B1F32),
              value: _reverse,
              onChanged: (val) {
                setState(() => _reverse = val);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: TitledBottomNavigationBar(
        onTap: (index) => print("Current Index : $index"),
        items: items,
        reverse: _reverse,
        activeColor: Color(0xFFC41A3B),
        inactiveColor: Color(0xFF1B1F32),
        inactiveStripColor: Colors.grey,
        indicatorColor: Color(0xFFC41A3B),
        curve: Curves.easeInOutBack,
      ),
    );
  }
}
