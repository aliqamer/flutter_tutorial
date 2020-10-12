import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'hello Ali',
          style: TextStyle(fontSize: 20.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.alternate_email),
          color: Colors.amber,
        ),
        // child: RaisedButton.icon(
        //     onPressed: () {},
        //     icon: Icon(Icons.mail),
        //     label: Text('mail me'),
        //     color: Colors.amber),
        // child: Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.lightBlue,
        //   size: 50.0,
        // ),
        // child: FlatButton(
        //   onPressed: () {
        //     print('you clicked me');
        //   },
        //   child: Text('click me'),
        //   color: Colors.lightBlue,
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Text('click'),
        backgroundColor: Colors.red[400],
      ),
    );
  }
}
