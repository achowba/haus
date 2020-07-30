import 'package:flutter/material.dart';

import 'package:haus/constants/colors.dart';

class HouseInfoCard extends StatelessWidget {
    final String infoText;
    final String infoHeader;

    HouseInfoCard(this.infoText, this.infoHeader);

    @override
    Widget build (BuildContext context) {
        return Container(
            margin: EdgeInsets.only(
                right: 20,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(
                            bottom: 10,
                        ),
                        height: 90,
                        width: 90,
                        child: Center(
                            child: Text(
                                infoText,
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    color: darkBlueCol,
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.w800
                                ),
                            ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: iconBorderCol.withOpacity(0.6)
                            ),
                            borderRadius: BorderRadius.circular(25)
                        ),
                    ),
                    Text(
                        infoHeader.toString(),
                        style: TextStyle(
                            fontFamily: 'Lato',
                            color: darkBlueCol,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w800
                        ),
                    ),
                ],
            ),
        );
    }
}
