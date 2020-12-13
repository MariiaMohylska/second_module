import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home task 2',
      theme: ThemeData(
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Second module home task'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.fastfood),
                      title: Text("Бургер"),
                      subtitle: Text("Соковитий бургер з McDonald’s"),
                      trailing: Icon(Icons.navigate_next),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.emoji_food_beverage),
                      title: Text("Американо з молоком"),
                      subtitle: Text("Смачна кава як вдома"),
                      trailing: Icon(Icons.navigate_next),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.whatshot),
                      title: Text("Шашлик"),
                      subtitle: Text("Прямо з мангалу"),
                      trailing: Icon(Icons.navigate_next),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Center(
                        child: Text("..."),
                      ),
                      trailing: Icon(Icons.navigate_next),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
                color: Color(0xffb3e6b3),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)
                ),
              ),
              child:  Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 16.0),
                      child: FloatingActionButton(
                        onPressed: null,
                        child: Icon(Icons.shopping_cart_outlined),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 16.0),
                      child: FloatingActionButton(
                        onPressed: null,
                        child: Icon(Icons.menu_book),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 16.0),
                      child: FloatingActionButton(
                        onPressed: null,
                        child: Icon(Icons.search),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
