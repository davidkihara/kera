import 'package:flutter/material.dart';
import 'package:kera/screens/home.dart';
import 'package:kera/screens/widgets/custom_clipper.dart';
import 'package:kera/utils/app_colors.dart';
import 'package:kera/utils/app_globals.dart';

class CardMain extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final String value;
  final String unit;
  final Color color;

  CardMain({
    Key? key,
    required this.image,
    required this.title,
    required this.value,
    required this.unit,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: const EdgeInsets.only(right: 15.0),
        width: ((MediaQuery.of(context).size.width -
                (AppGlobals.paddingSide * 2 + AppGlobals.paddingSide / 2)) /
            2),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          color: color,
        ),
        child: Material(
          child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: ClipPath(
                    clipper: MyCustomClipper(clipType: ClipType.semiCircle),
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.black.withOpacity(0.03),
                      ),
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Icon and Hearbeat
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image(width: 32, height: 32, image: image),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              title,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 13, color: AppColors.textDark),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        value,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: AppColors.textDark,
                        ),
                      ),
                      Text(
                        unit,
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.textDark,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            onTap: () {
              debugPrint("CARD main clicked. redirect to details page");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          color: Colors.transparent,
        ),
      ),
    );
  }
}
