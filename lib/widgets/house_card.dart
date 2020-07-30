import 'package:flutter/material.dart';

import 'package:haus/constants/colors.dart';
import 'package:haus/widgets/like_button.dart';
import 'package:haus/screens/house_details.dart';

class HouseCard extends StatelessWidget {

    final String id;
    final String price;
    final String imageUrl;
    final String address;
    final String numberOfBedrooms;
    final String numberOfBathrooms;
    final String area;
    final bool isLiked;

    HouseCard({
        @required this.id,
        @required this.imageUrl,
        @required this.price,
        @required this.address,
        @required this.numberOfBedrooms,
        @required this.numberOfBathrooms,
        @required this.area,
        @required this.isLiked
    });

    void selectHouse(BuildContext ctx) {
        Navigator.of(ctx).pushNamed( // pass a named route with argument containing id of meal
            HouseDetails.routeName,
            arguments: id
        );
    }

    @override
    Widget build (BuildContext context) {
        return InkWell(
            highlightColor: Colors.transparent,
            // splashColor: Colors.transparent,
            child: Container(
                padding: EdgeInsets.only(
                    bottom: 30,
                ),
                child: Column(
                    children: <Widget>[
                        Stack(
                            children: <Widget>[
                                Hero(
                                    tag: imageUrl,
                                    child: Container(
                                        height: 180,
                                        margin: EdgeInsets.only(
                                            bottom: 20,
                                        ),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(25.0),
                                            image: DecorationImage(
                                                // image: AssetImage(bgImage),
                                                image: NetworkImage(imageUrl),
                                                fit: BoxFit.cover,
                                                alignment: Alignment.center
                                            ),
                                        ),
                                    ),
                                ),
                                Positioned(
                                    top: 17,
                                    right: 17,
                                    child: LikeButton(isLiked)
                                )
                            ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                                Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                        Text(
                                            price.toString(),
                                            style: TextStyle(
                                                fontFamily: 'Lato',
                                                color: darkBlueCol,
                                                fontSize: 23.0,
                                                fontWeight: FontWeight.w600
                                            ),
                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                            address.toString(),
                                            style: TextStyle(
                                                fontFamily: 'Lato',
                                                color: darkBlueCol.withOpacity(0.3),
                                                fontSize: 13.0,
                                                fontWeight: FontWeight.w600
                                            ),
                                        ),
                                    ],
                                ),
                                SizedBox(height: 10,),
                                Text(
                                    '$numberOfBedrooms bedroom(s) / $numberOfBathrooms bathroom(s) / $area ft\u00B2',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        color: darkBlueCol,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600
                                    ),
                                ),
                            ],
                        ),
                    ],
                ),
            ),
            // onTap: () {
            //     Navigator.of(context).push(MaterialPageRoute(
            //         builder: (context) => HouseDetails()
            //     ));
            // },
            onTap: () => selectHouse(context)
        );
    }
}
