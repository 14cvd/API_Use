import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_app/service/get_request.dart';
import 'package:news_app/widget/stack_crypto_widget.dart';

import '../model/crypto_model.dart';
import '../widget/bottom_widget.dart';

class CryoptoScreen extends StatefulWidget {
  const CryoptoScreen({super.key});

  @override
  State<CryoptoScreen> createState() => _CryoptoScreenState();
}

class _CryoptoScreenState extends State<CryoptoScreen> {
  Future<List<CryoptoModel>>? future;
  @override
  void initState() {
    super.initState();
    future = GetMethod.getRequestCrypto();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Text("Crypto App"),
      ),
      body: FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data!;
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: data.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                      alignment: Alignment.center,
                      child: StackCryptoWidget(item: data[index]));
                });
          } else if (snapshot.hasError) {
            return const Center(child: Text("404"));
          } else {
            return Center(child: SpinKitPianoWave(
              itemBuilder: (BuildContext context, int index) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    color: index.isEven ? Colors.amber.shade300 : Colors.white,
                  ),
                );
              },
            ));
          }
        },
      ),
      bottomNavigationBar: const BottomNavigatorWidget(),
    );
  }
}
