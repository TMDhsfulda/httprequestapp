import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:books_finder/books_finder.dart';

//  Copyright 2020 Bruno D'Luka

import 'package:books_finder/books_finder.dart';
import 'package:httprequestapp/screens/main_screen.dart';

void main(List<String> args) async {
  runApp(MyApp());


  final books = await queryBooks(
    'Harry Potter Band 1',
    maxResults: 3,
    printType: PrintType.books,
    orderBy: OrderBy.relevance,
    reschemeImageLinks: true,
  );
  books.forEach((book) {
    final info = book.info;
    final cover = book.info.imageLinks[0];
    Image.network(
        'https://books.google.com/books/content?id=XvApAQAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api');
    print('$info\n');
  });
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
