import 'package:flutter/material.dart';
import 'package:my_first_flutter/Pages/new_node.dart';
import '../Pages/new_node.dart';

class FloatBtnSave extends StatelessWidget {
  const FloatBtnSave({Key? key, required List<Icon> child}) : super(key: key);

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
          Icons.save,
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}
