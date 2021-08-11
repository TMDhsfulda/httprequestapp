import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:books_finder/books_finder.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Books"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Guten Tag"),
            Image.network(
                'https://books.google.com/books/content?id=XvApAQAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api'),
          ],
        ),
      ),
    );
  }

/*  Future<String> bookreques async {


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
  }*/


}
