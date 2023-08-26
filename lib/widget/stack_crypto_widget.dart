import 'package:flutter/material.dart';

import '../model/crypto_model.dart';

// ignore: must_be_immutable
class StackCryptoWidget extends StatelessWidget {
  StackCryptoWidget({super.key, required this.item});
  CryoptoModel item;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.network(item.img.toString()),
        Positioned(
          child: Card(
            shape: const StadiumBorder(),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Image.network(
                item.img.toString(),
              ),
            ),
          ),
        ),
        Positioned(
            top: 250,
            child: Card(
              child: Container(
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    item.lang.toString(),
                    style: const TextStyle(),
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
