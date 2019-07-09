import 'package:flutter/material.dart';

class OrderHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Mateus"),
              Text ("Rua Flutter LINDA")

            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[

            Text("Preço dos Produtos"),
            Text ("Preço Total")

          ],
        )

      ],
    );
  }
}
