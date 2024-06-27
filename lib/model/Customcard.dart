import 'package:appstore/model/product.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class customecard extends StatelessWidget {
  final product itme;
  customecard({super.key, required this.itme});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.6),
                spreadRadius: 0,
                blurRadius: 20,
                offset: Offset(5, 20),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
                color: Colors.white,
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "${itme.title.toString().substring(0, 6)}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${itme.price}" r' $',
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(
                            FontAwesomeIcons.solidHeart,
                            color: Colors.red,
                            size: 20.0,
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ),
        Positioned(
          top: 20,
          right: 10,
          left: 30,
          // left: 10,
          child: Image.network(
            height: 90,
            width: 90,
            "${itme.image}",
          ),
        ),
      ],
    );
  }
}
