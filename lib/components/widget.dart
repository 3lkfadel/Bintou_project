import 'package:flutter/material.dart';
import 'package:premier_projet_flutter/page/two_side_rounded_button.dart';

 
 
 Container bestofTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 200,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(224, 207, 207, 1),
                  borderRadius: BorderRadius.circular(29)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "New york Time Best For 11th March 2020",
                    style: TextStyle(
                      fontSize: 9,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "I would have liked you to tell me",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Text(
                    "LILYA",
                    style: TextStyle(
                      fontSize: 9,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              right: 0,
              top: 0,
              child: Image.asset(
                "assets/images/roman.jpg",
                width: size.width * .37,
              )),
          Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 40,
                width: size.width * .3,
                child: TwoSideRoundedButton(
                  text: "read",
                  radius: 24,
                  press: () {},
                ),
              ))
        ],
      ),
    );
  }

