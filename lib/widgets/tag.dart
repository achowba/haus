import 'package:flutter/material.dart';
import 'package:haus/constants/colors.dart';

class Tag extends StatelessWidget {
    final String text;

    Tag(this.text);

    @override
    Widget build (BuildContext context) {
        return InkWell(
            child: Container(
                width: 140,
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                ),
                margin: EdgeInsets.only(
                    right: 15
                ),
                child: Center(
                    child: Text(
                        text.toString(),
                        style: TextStyle(
                            fontFamily: 'Lato',
                            color: darkBlueCol,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600
                        ),
                    ),
                ),
                decoration: BoxDecoration(
                    color: tagCol.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(50))
                ),
            ),
            onTap: () {},
        );
    }
}
