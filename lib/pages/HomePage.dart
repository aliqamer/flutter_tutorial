import 'package:flutter/material.dart';
import 'package:flutter_tutorial/theme/theme.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return new Scaffold(
      appBar: AppBar(
        title: Text('Home'),
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
                backgroundImage: AssetImage('assets/ali.jpeg'),
                radius: 40.0,
              ),
            ),
            Divider(height: 60.0, color: Colors.grey[800]),
            Text(
              'Name',
              style: TextStyle(letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Qamer Ali',
              style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.amberAccent[200],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'qamar.ali1@outlook.com',
                  style: TextStyle(
                      color: Colors.grey[400],
                      letterSpacing: 1.0,
                      fontSize: 18.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
