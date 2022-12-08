import 'package:flutter/material.dart';
import 'package:t2_sistema_distribuido/custom_widget/list_item_sintomas_de_jejum.dart';
import 'package:t2_sistema_distribuido/data/app_data.dart' as appData;

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Trabalho Prático de\nSistema Distribuido",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                "Matheus Costa Amboni e \nSidnei De Souza Junior",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 48),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Lista dos algoritmos",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 32),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.of(context).push(
                  //       MaterialPageRoute(
                  //         builder: (context) {
                  //           return const Programa1();
                  //         },
                  //       ),
                  //     );
                  //   },
                  //   child: const Text("Tela do Algoritmo de Bully"),
                  // ),
                  // const SizedBox(height: 8),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.of(context).push(
                  //       MaterialPageRoute(
                  //         builder: (context) {
                  //           return const Programa2();
                  //         },
                  //       ),
                  //     );
                  //   },
                  //   child: const Text("Tela do Sequenciador Móvel"),
                  // ),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (_, index) =>
                      AlgoritmoItem(item: appData.listDosAlgoritmos[index]),
                  separatorBuilder: (_, index) => const SizedBox(height: 10),
                  itemCount: appData.listDosAlgoritmos.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
