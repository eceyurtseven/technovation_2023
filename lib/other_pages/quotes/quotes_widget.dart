
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/other_pages/quotes/theme_text.dart';

class QuoteWidget extends StatelessWidget {

  final Color backgroundColor;
  final String quote, author;

  const QuoteWidget({super.key, required this.backgroundColor, required this.quote, required this.author});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
      width: 500,
      height: 820,
      color: backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(18), vertical: ScreenUtil().setHeight(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            "assets/quote_image.png",
            color: Colors.white.withOpacity(.4),
            height: ScreenUtil().setHeight(70),
            width: ScreenUtil().setHeight(70),
          ),
          Expanded(
            child: Center(
              child: Text(
                quote,
                style: ThemeText.headline,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                author,
                style: ThemeText.subHead,
              ),
            ),
          ),
        ],
      ),
    );
  }
}