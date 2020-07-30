import 'package:flutter/material.dart';
import 'package:haus/constants/colors.dart';

class NavBar extends StatelessWidget {

    final Color bgColor;
    final Widget leadingIcon;
    final Widget actionIcon;

    NavBar(this.bgColor, this.leadingIcon, this.actionIcon);

    @override
    Widget build (BuildContext context) {
        return AppBar(
            backgroundColor: bgColor,
            automaticallyImplyLeading: false,
            elevation: 0,
            titleSpacing: 0.0,
            flexibleSpace: Container(
                padding: EdgeInsets.only(
                    top: 25.0,
                ),
                margin: EdgeInsets.only(
                    top: 30.0,
                    left: 30.0,
                    right: 30.0,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                        leadingIcon,
                        actionIcon,
                    ],
                ),
            ),
        );
    }
}
