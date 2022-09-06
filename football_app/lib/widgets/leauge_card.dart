import 'package:flutter/material.dart';

class LeaugeCard extends StatelessWidget {
  late final String url;
  LeaugeCard({required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 140,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Color(0xFF1D1E33),
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset(url),
        ),
      ),
    );
  }
}
