import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoprovider/screen/homescreen.dart';
import 'package:todoprovider/providers/todos_model.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TodosModel(),
      child: MaterialApp(
        title: 'Todo',
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }
}
