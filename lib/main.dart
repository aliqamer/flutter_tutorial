import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'hello Ali',
              style: TextStyle(fontSize: 20.0),
            ),
            centerTitle: true,
            backgroundColor: Colors.red[400],
          ),
          body: Center(
            child: Text(
              'hey dude',
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'IndieFlower',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.grey[600]),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => {},
            child: Text('click'),
            backgroundColor: Colors.red[400],
          ),
        ),
      ),
    );
