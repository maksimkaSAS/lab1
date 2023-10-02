// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'dart:js_interop';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhotographerProfile(),
    );
  }
}

class PhotographerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Фотограф Василь'),
        backgroundColor: Color.fromARGB(255, 202, 206, 209),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 202, 206, 209),
              Color.fromARGB(255, 68, 72, 133)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  'https://st3.depositphotos.com/12985790/16650/i/600/depositphotos_166506322-stock-photo-photographer-with-digital-photo-camera.jpg',
                  width: 350,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Фотограф Василь',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Спеціалізація: Весільна фотографія',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Контактна інформація:',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '+38 (066) 666-6666',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'vasilchik@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Послуги фотографа Василя:',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '- Весільна фотосесія',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                '- Сімейні фотозйомки',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                '- Портретна фотографія',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Запишіться на фотосесію вже сьогодні!',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // #
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 202, 206, 209)),
                ),
                child: Text(
                  'Записатися',
                  style: TextStyle(color: Color.fromARGB(255, 68, 72, 133)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
