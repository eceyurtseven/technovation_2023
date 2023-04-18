import 'package:flutter/material.dart';
import 'constants.dart';

class FrontView extends StatelessWidget {
  final int monthIndex;
  const FrontView({
    Key? key,
    required this.monthIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$monthIndex",
              style: const TextStyle(color: Colors.white),
              textScaleFactor: 3.5,
            ),
            Text(
              months[monthIndex]!.keys.toList()[0],
              style: const TextStyle(color: Colors.white),
              textScaleFactor: 2.5,
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: 
                      CrossAxisAlignment.start,
                    children: [
                      Text(
                        "2/${ months[monthIndex]!.values.toList()[0]}", 
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 3.0),
                      Container(
                        width: double.infinity,
                        height: 3.0,
                        color: Colors.white30,
                        child: FractionallySizedBox(
                          alignment: Alignment.centerLeft,
                          widthFactor: 2/31,
                          child: Container(
                            color: Colors.white,

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.more_vert_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}