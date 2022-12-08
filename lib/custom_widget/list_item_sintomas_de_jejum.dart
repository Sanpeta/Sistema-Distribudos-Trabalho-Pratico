import 'package:flutter/material.dart';
import 'package:t2_sistema_distribuido/model/list_item_model.dart';
import 'package:t2_sistema_distribuido/p_bully/programa_bully.dart';
import 'package:t2_sistema_distribuido/p_seq_movel/programa_seq_movel.dart';

class AlgoritmoItem extends StatelessWidget {
  final ListItemModel item;

  const AlgoritmoItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              if (item.url == "bully") {
                return const ProgramaBully();
              } else {
                return const ProgramaSeqMovel();
              }
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xff000020),
            width: 1.0,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        margin: const EdgeInsets.only(bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset(item.imagePath),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Color(0xff2121a4),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item.desc,
                    maxLines: 4,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Color(0xff212109),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
