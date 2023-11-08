import 'package:flutter/material.dart';
import 'book_data.dart';
import 'book_model.dart';

class BooksDetails extends StatelessWidget {
  final int index;
  final String section;

  const BooksDetails({super.key, required this.index, required this.section});

  @override
  Widget build(BuildContext context) {
    List<Book>? bookList;
    if (section == "Continue Reading") {
      bookList = recentBooks;
    } else if (section == "Discover More") {
      bookList = allBooks;
    }
    return Scaffold(
      backgroundColor: const Color(0xfffff8ee),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SafeArea(
                child: Container(
              child: const Column(
                children: [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 20))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
