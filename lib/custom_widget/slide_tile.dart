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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: (MediaQuery.of(context).size.width * 0.13),
                    letterSpacing: 2),
              ),
              Text(
                "ASTER",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color(0xff21B6B6),
                    fontWeight: FontWeight.w400,
                    fontSize: (MediaQuery.of(context).size.width * 0.13),
                    letterSpacing: 0),
              ),
            ],
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
    );
  }
}
