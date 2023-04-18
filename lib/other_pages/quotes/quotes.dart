import 'package:flutter/material.dart';
import 'package:login_page/other_pages/quotes/quote_screen.dart';
import 'package:login_page/other_pages/quotes/quotes_widget.dart';

class QuotesPage extends StatefulWidget {
  const QuotesPage({super.key});

  @override
  State<QuotesPage> createState() => _QuotesPageState();
}

class _QuotesPageState extends State<QuotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inspirational Quotes')
      ),
      body: QuoteScreen(),
    );
  }
}