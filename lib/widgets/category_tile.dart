import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final DocumentSnapshot category;

  CategoryTile(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Card(
          child: ExpansionTile(
            title: Text(
              category.data["title"],
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
            children: <Widget>[
              FutureBuilder<QuerySnapshot>(
                  future: category.reference.collection("Itens").getDocuments(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return Container();
                    return Column(
                        children: snapshot.data.documents.map((doc) {
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  doc.data["images"][0]),
                            ),
                            title: Text(doc.data["title"]),
                            trailing:
                            Text("R\$${doc.data["price"].toStringAsFixed(2)}"),
                            onTap:(){


                            },
                          );
                        }).toList());
                  })
            ],
            leading: CircleAvatar(
              backgroundImage: NetworkImage(category.data["icon"]),
            ),
          ),
        ));
  }
}
