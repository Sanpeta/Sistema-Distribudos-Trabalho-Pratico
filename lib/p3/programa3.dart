import 'package:flutter/material.dart';
import 'package:t2_sistema_distribuido/home.dart';
import 'package:t2_sistema_distribuido/data/app_data.dart' as appData;
import 'package:t2_sistema_distribuido/custom_widget/slide_tile.dart';

class Programa3 extends StatefulWidget {
  const Programa3({Key? key}) : super(key: key);

  @override
  State<Programa3> createState() => _Programa3State();
}

class _Programa3State extends State<Programa3> {
  PageController controller = PageController();
  int slideIndex = 0;
  List mySLides = appData.listProgram3;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3.0),
      height: 6.0,
      width: 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? const Color(0xff21b6b6) : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff3C8CE7),
            Color(0xff00EAFF),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height - 100,
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(
                () {
                  slideIndex = index;
                },
              );
            },
            children: <Widget>[
              // SlideTile(
              //   item: appData.listProgram2[0],
              // ),
              // SlideTile(
              //   item: appData.listProgram2[1],
              // ),
              // SlideTile(
              //   item: appData.listProgram2[2],
              // ),
              // SlideTile(
              //   item: appData.listProgram2[3],
              // ),
              // SlideTile(
              //   item: appData.listProgram2[4],
              // ),
              // SlideTile(
              //   item: appData.listProgram2[5],
              // ),
            ],
          ),
        ),
        bottomSheet: slideIndex != 5
            ? Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Pular",
                        style: TextStyle(
                            color: Color(0xff21B6B6),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < 6; i++)
                          i == slideIndex
                              ? _buildPageIndicator(true)
                              : _buildPageIndicator(false),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Próximo",
                        style: TextStyle(
                            color: Color(0xff21B6B6),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              )
            : InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeView(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  color: const Color(0xff21b6b6),
                  alignment: Alignment.center,
                  child: const Text(
                    "VAMOS COMEÇAR",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
