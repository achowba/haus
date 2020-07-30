import 'package:flutter/material.dart';

import 'package:haus/widgets/house_card.dart';
import 'package:haus/data/houses.dart';

class Cards extends StatelessWidget {
    @override
    Widget build (BuildContext context) {
        return Container(
            margin: EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
            ),
            child: ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: DUMMY_HOUSES.length,
                itemBuilder: (ctx, index) {
                    return HouseCard(
                        id: DUMMY_HOUSES[index].id,
                        price: DUMMY_HOUSES[index].price,
                        imageUrl: DUMMY_HOUSES[index].imageUrl,
                        address: DUMMY_HOUSES[index].address,
                        numberOfBedrooms: DUMMY_HOUSES[index].numberOfBedrooms,
                        numberOfBathrooms: DUMMY_HOUSES[index].numberOfBathrooms,
                        area: DUMMY_HOUSES[index].area,
                        isLiked: DUMMY_HOUSES[index].isLiked,
                    );
                }
            )
        );
    }
}

/* class Cards extends StatelessWidget {
    @override
    Widget build (BuildContext context) {
        return Padding(
            padding: EdgeInsets.all(30),
            child: ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                children: <Widget>[
                    HouseCard('https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940','\$200,000','Jenison, MI 47428, SF','4','2','1.416 ft2', false),
                    HouseCard('https://images.pexels.com/photos/3555615/pexels-photo-3555615.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','\$140,000','Jenison, MI 47428, SF','4','2','1.416 ft2', true),
                    HouseCard('https://images.pexels.com/photos/164558/pexels-photo-164558.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940','\$140,000','Jenison, MI 47428, SF','4','2','1.416 ft2', true),
                    HouseCard('https://images.pexels.com/photos/210617/pexels-photo-210617.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940','\$250,000','Jenison, MI 47428, SF','4','2','1.416 ft2', true),
                    HouseCard('https://images.pexels.com/photos/1396122/pexels-photo-1396122.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940','\$100,000','Jenison, MI 47428, SF','4','2','1.416 ft2', true),
                    HouseCard('https://images.pexels.com/photos/280222/pexels-photo-280222.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940','\$300.000','Jenison, MI 47428, SF','4','2','1.416 ft2', true),
                    HouseCard('https://images.pexels.com/photos/164522/pexels-photo-164522.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940','\$250.000','Jenison, MI 47428, SF','4','2','1.416 ft2', true),
                    HouseCard('https://images.pexels.com/photos/53610/large-home-residential-house-architecture-53610.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940','\$200.000','Jenison, MI 47428, SF','4','2','1.416 ft2', true),
                    HouseCard('https://images.pexels.com/photos/3935320/pexels-photo-3935320.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','\$200.000','Jenison, MI 47428, SF','4','2','1.416 ft2', true),
                    HouseCard('https://images.pexels.com/photos/1396132/pexels-photo-1396132.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940','\$200.000','Jenison, MI 47428, SF','4','2','1.416 ft2', true),
                ],
            ),
        );
    }
}

 */