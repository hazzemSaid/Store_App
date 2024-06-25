import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class customecard extends StatelessWidget {
  const customecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
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
                    "data",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r"$2000",
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
    );
  }
}
