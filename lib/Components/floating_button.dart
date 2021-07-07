import 'package:flutter/material.dart';
import 'package:my_first_flutter/Pages/new_node.dart';
import '../Pages/new_node.dart';

class FloatBtn extends StatelessWidget {
  const FloatBtn({Key? key, required List<Icon> child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const FullScreenDialog(),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
