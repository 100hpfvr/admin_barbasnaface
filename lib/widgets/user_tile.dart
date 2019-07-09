import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class UserTile extends StatelessWidget {
  final Map<String, dynamic> user;

  UserTile(this.user);

  @override
  Widget build(BuildContext context) {
     if (user.containsKey("money"))
      return ListTile(
        title: Text(user["name"], style: TextStyle(color: Colors.white)),
        subtitle: Text(
          user["email"],
          style: TextStyle(color: Colors.white),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text("Pedidos: ${user["orders"]}",
                style: TextStyle(color: Colors.white)),
            Text("Gasto: R\$ ${user["money"].toStringAsFixed(2)}",
                style: TextStyle(color: Colors.white)),
          ],
        ),
      );
    else
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 18, vertical: 9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 500,
              height: 15,
              child: Shimmer.fromColors(
                  child: Container(
                    color: Colors.green.withAlpha(50),
                    margin: EdgeInsets.symmetric(vertical: 4),
                  ),
                  baseColor: Colors.white,
                  highlightColor: Colors.green),
            )
          ],
        ),
      );
  }
}
