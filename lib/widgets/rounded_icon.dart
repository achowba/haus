import 'package:flutter/material.dart';
import 'package:haus/constants/colors.dart';

class RoundedIcon extends StatelessWidget {

    final IconData icon;
    final Color iconColor;
    final Color borderColor;

    RoundedIcon(this.icon, this.iconColor, this.borderColor);

    @override
    Widget build (BuildContext context) {
        return InkWell(
            child: Container(
                padding: EdgeInsets.all(13),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                        Icon(
                            icon,
                            color: iconColor,
                            size: 25,
                        )
                    ],
                ),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                        width: 2,
                        color: borderColor
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                    ),
                ),
            ),
            onTap: () {},
        );
    }
}
