import 'package:flutter/material.dart';
import 'package:t2_sistema_distribuido/model/slide_tile_model.dart';

class SlideTile extends StatelessWidget {
  SlideTileModel item;

  SlideTile({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width <= 1290
        ? Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: (MediaQuery.of(context).size.width * 0.11),
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Image.asset(
                  item.imagePath,
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.8,
                  fit: BoxFit.scaleDown,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  item.desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w800,
                    fontSize: (MediaQuery.of(context).size.width * 0.055),
                  ),
                )
              ],
            ),
          )
        : Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: (1290 * 0.11),
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Image.asset(
                  item.imagePath,
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: 1290 * 0.8,
                  fit: BoxFit.scaleDown,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  item.desc,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w800,
                    fontSize: (1290 * 0.055),
                  ),
                )
              ],
            ),
          );
  }
}
