import 'package:flutter/material.dart';
import 'package:t2_sistema_distribuido/home.dart';
import 'package:t2_sistema_distribuido/data/app_data.dart' as appData;
import 'package:t2_sistema_distribuido/custom_widget/slide_tile.dart';

class Programa1 extends StatefulWidget {
  const Programa1({Key? key}) : super(key: key);

  @override
  State<Programa1> createState() => _Programa1State();
}

class _Programa1State extends State<Programa1> {
  PageController controller = new PageController();
  int slideIndex = 0;
  List mySLides = appData.listProgramBully;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3.0),
      height: 6.0,
      width: 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? const Color(0xff2121a4) : Colors.grey[300],
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
        body: SizedBox(
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
              SlideTile(
                item: mySLides[0],
              ),
              SlideTile(
                item: mySLides[1],
              ),
              SlideTile(
                item: mySLides[2],
              ),
              SlideTile(
                item: mySLides[3],
              ),
              SlideTile(
                item: mySLides[4],
              ),
              SlideTile(
                item: mySLides[5],
              ),
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
                      onPressed: () {
                        controller.animateToPage(5,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.linear);
                      },
                      child: const Text(
                        "Pular",
                        style: TextStyle(
                          color: Color(0xff2121a4),
                          fontWeight: FontWeight.w600,
                        ),
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
                      onPressed: () {
                        controller.animateToPage(slideIndex + 1,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.linear);
                      },
                      child: const Text(
                        "Próximo",
                        style: TextStyle(
                          color: Color(0xff2121a4),
                          fontWeight: FontWeight.w600,
                        ),
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
                      builder: (context) => HomeView(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  color: const Color(0xff2121a4),
                  alignment: Alignment.center,
                  child: const Text(
                    "VOLTAR TELA DE INÍCIO",
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
