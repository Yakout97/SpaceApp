import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlanetCard extends StatelessWidget {
  const PlanetCard({
    Key? key,
    required this.TextType,
    required this.SvgLink,
    this.ViewText = '0',
    this.size = 200,
  }) : super(key: key);

  final String TextType;
  final String SvgLink;
  final String ViewText;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 210,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
        child: Stack(children: [
          Positioned(
            top: 90,
            child: Card(
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Color(0xFFE9ECEF)), //change the color of border
                  borderRadius: BorderRadius.circular(30)),
              color: Colors.black,
              child: SizedBox(
                width: 190,
                height: 180,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        TextType,
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          "👁$ViewText",
                          style:
                              TextStyle(color: Color(0xFFE9ECEF), fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: SizedBox(
              width: size,
              height: size,
              child: SvgPicture.asset(
                SvgLink,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
