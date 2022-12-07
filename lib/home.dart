import 'package:flutter/material.dart';
import 'package:t2_sistema_distribuido/p1/programa1.dart';
import 'package:t2_sistema_distribuido/p2/programa2.dart';
import 'package:t2_sistema_distribuido/p3/programa3.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const Programa1();
                        },
                      ),
                    );
                  },
                  child: const Text("Tela do Programa 1"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const Programa2();
                        },
                      ),
                    );
                  },
                  child: const Text("Tela do Programa 2"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const Programa3();
                        },
                      ),
                    );
                  },
                  child: const Text("Tela do Programa 3"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
