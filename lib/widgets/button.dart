import 'package:flutter/material.dart';
import 'package:haus/constants/colors.dart';

class Button extends StatelessWidget {

    final IconData icon;
    final String text;

    Button(this.icon, this.text);

    @override
    Widget build (BuildContext context) {
        return InkWell(
            child: Container(
                padding: EdgeInsets.only(
                    top: 17,
                    right: 25,
                    bottom: 17,
                    left: 25,
                ),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                        Icon(
                            icon,
                            color: Colors.white,
                            size: 30,
                        ),
                        SizedBox(
                            width: 10,
                        ),
                        Text(
                            text.toString(),
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white
                            ),
                        ),
                    ],
                ),
                decoration: BoxDecoration(
                    color: darkBlueCol,
                    boxShadow: [
                        BoxShadow(
                            color: darkBlueCol.withOpacity(0.1),
                            offset: Offset(0, 15),
                            blurRadius: 10,
                            spreadRadius: 1,
                        )
                    ],
                    borderRadius: BorderRadius.circular(60),
                ),
            ),
            onTap: () {},
        );
    }
}
