import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider_app/domain/book.dart';

class AddBookModel extends ChangeNotifier {
  String bookTitle = '';
  Future addBookToFirebase() async {
    if (bookTitle.isEmpty) {
      throw ('タイトルを入力して下さい');
    } else {
      Firestore.instance.collection('books').add(
        {
          'title': bookTitle,
        },
      );
    }
  }
}
