import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String data;

  const SecondScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Второй экран'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Полученные данные: $data'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Возвращенные данные с второго экрана');
              },
              child: Text('Вернуться с данными'),
            ),
          ],
        ),
      ),
    );
  }
}