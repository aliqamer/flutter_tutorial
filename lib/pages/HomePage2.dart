import 'package:flutter/material.dart';
import 'package:flutter_tutorial/theme/theme.dart';
import 'package:provider/provider.dart';

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2 createState() => _HomePage2();
}

class _HomePage2 extends State<HomePage2> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return new Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: toggle ? Icon(Icons.wb_sunny) : Icon(Icons.brightness_2),
              onPressed: () => {
                    setState(() {
                      toggle = !toggle;
                    }),
                    if (toggle)
                      {
                        _themeChanger.setTheme(ThemeData.dark()),
                      }
                    else
                      {
                        _themeChanger.setTheme(ThemeData.light()
                            .copyWith(primaryColor: Colors.cyanAccent[700])),
                      },
                  }),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('assets/ali1.jpeg'),
              ),
            ),
            SizedBox(height: 15.0),
            Center(
              child: Text(
                'Qamer Ali',
                style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Source Sans Pro'),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                'Software Engineer',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: 18.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+61 474 084 868',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 18.0),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'qamer.ali1@outlook.com',
                  style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
