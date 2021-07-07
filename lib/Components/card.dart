import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      child: Column(
        children: [
          const ExpansionTile(
            leading: Icon(Icons.bookmark_border),
            title: Text(
              'Node Title',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Name   |   0.1.700.1.33   |   23:33'),
            children: <Widget>[
              Text(
                "In Children use can use any flutter Widget",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                    "Children Widgets are expanded/ visible when Expansion Tile Widget is Clicked"),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
