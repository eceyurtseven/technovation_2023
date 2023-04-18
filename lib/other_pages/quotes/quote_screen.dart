import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import "package:cloud_firestore/cloud_firestore.dart";
import 'package:login_page/other_pages/quotes/quotes_widget.dart';

class QuoteScreen extends StatelessWidget {
  QuoteScreen({super.key});

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: _firestore.collection("quotes").snapshots(),
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            return _LoadingIndicator();
          }
          return PageView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              final document = snapshot.data?.docs[index];
              return QuoteWidget(
                backgroundColor: Colors.deepPurple.shade400,
                quote: document!["quote"], 
                author: document["author"]);
            },
          );
        },
      ),
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}