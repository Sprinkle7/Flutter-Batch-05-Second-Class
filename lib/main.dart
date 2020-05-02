import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentindex = 0;
  String name = '';

  void onpressed(int index) {
    setState(() {
      _currentindex = index;

      if (_currentindex == 0) {
        name = "Home";
      } else if (_currentindex == 1) {
        name = "Contact us";
      }
    });
  }

  String picture =
      'https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Project Name'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              iconSize: 24,
            ),
            IconButton(
              icon: Icon(
                Icons.add_call,
                color: Colors.white,
              ),
              iconSize: 24,
            ),
            IconButton(
              icon: Icon(
                Icons.local_bar,
                color: Colors.white,
              ),
              iconSize: 24,
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: onpressed,
          currentIndex: _currentindex,
          iconSize: 40,
          elevation: 9,
          fixedColor: Colors.deepPurple,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                activeIcon: Icon(Icons.camera)),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone),
                title: Text('Contact us'),
                activeIcon: Icon(Icons.email)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          child: Icon(Icons.add),
          onPressed: () => debugPrint('Button Clicked'),
          splashColor: Colors.yellow,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                height: 400,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage('https://images.unsplash'
                              '.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
                          fit: BoxFit.cover)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(picture),
                  ),
                  accountName: Text('Allauddin'),
                  accountEmail: Text('allauddin2015@gmail.com'),
                ),
              ),
              ListTile(
                leading: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: Icon(
                    Icons.home,
                    size: 34,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Home',
                ),
                subtitle: Text('Dashboard'),
              ),
              ListTile(
                leading: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: Icon(
                    Icons.home,
                    size: 34,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Second Page',
                ),
                subtitle: Text('Other Page'),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                      color: Colors.redAccent,
                      width: 1,
                      style: BorderStyle.solid),
                )),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Icon(
                      Icons.home,
                      size: 34,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Home',
                  ),
                  subtitle: Text('Dashboard'),
                ),
              ),
              ListTile(
                leading: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: Icon(
                    Icons.home,
                    size: 34,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Home',
                ),
                subtitle: Text('Dashboard'),
              )
            ],
          ),
        ),
        body: Container(
            width: double.infinity,
            color: Colors.deepPurpleAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(picture),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  (name != '') ? name : 'Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25, top: 20),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text('allauddin2015@gmail.com'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25, top: 20),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text('allauddin2015@gmail.com'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25, top: 20),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text('allauddin2015@gmail.com'),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
