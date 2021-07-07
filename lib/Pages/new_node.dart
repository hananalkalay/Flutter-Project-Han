import 'package:flutter/material.dart';
import 'package:my_first_flutter/Components/floating_btn_save.dart';
import '../Components/input.dart';
import '../Components/floating_btn_save.dart';

class FullScreenDialog extends StatelessWidget {
  const FullScreenDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6200EE),
        title: const Text('Create new node'),
      ),
      body: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.title),
            title: TextField(
              decoration: InputDecoration(
                hintText: "Node Title",
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.wifi),
            title: TextField(
              decoration: InputDecoration(
                hintText: "IP Address",
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.source),
            title: TextField(
              decoration: InputDecoration(
                hintText: "Node Source",
              ),
            ),
          ),
          const Divider(
            height: 1.0,
          ),
          const FloatBtnSave(
            child: [
              Icon(
                Icons.check,
                color: Colors.white,
              )
            ],
          ),
        ],
      ),
    );
  }
}
