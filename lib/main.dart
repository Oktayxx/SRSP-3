import 'package:flutter/material.dart';
import 'SecondScreen.dart'; // Импортируйте SecondScreen.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главный экран'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen(data: 'Данные с главного экрана')),
            );
            // Используйте полученные данные
            print("Результат: $result");
          },
          child: Text('Перейти к следующему экрану'),
        ),
      ),
    );
  }
}