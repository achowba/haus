import 'package:flutter/material.dart';

import 'package:haus/constants/colors.dart';

class Line extends StatelessWidget {
    @override
    Widget build (BuildContext context) {
        return Container(
            margin: EdgeInsets.only(
                left: 30.0,
                right: 30.0,
            ),
            child: Divider(
                height: 10,
                thickness: 1,
                color: tagCol,
            ),
        );
    }
}
