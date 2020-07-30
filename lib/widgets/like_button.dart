import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:haus/constants/colors.dart';

class LikeButton extends StatefulWidget {
    bool isLiked;
    LikeButton(this.isLiked);

    @override
    _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {

    @override
    Widget build (BuildContext context) {
        return InkWell(
            child: Container(
                height: 46.0,
                width: 46.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: Center(
                    child: Icon(
                        widget.isLiked ? LineIcons.heart : LineIcons.heart_o,
                        color: widget.isLiked ? likeCol : darkBlueCol,
                        size: 25,
                    ),
                ),
            ),
            onTap: () {
                setState(() {
                    widget.isLiked = !widget.isLiked;
                });
                // likeHouse(widget.isLiked);
            },
        );
    }

    /* likeHouse(is_liked) {
        setState(() {
            is_liked = !is_liked;
        });
    } */
}
