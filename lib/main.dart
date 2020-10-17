import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/HomePage2.dart';
import 'package:flutter_tutorial/theme/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeData.dark()),
      child: new MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage2(),
      theme: theme.getTheme(),
    );
  }
}
