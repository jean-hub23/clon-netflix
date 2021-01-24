import 'package:flutter/material.dart';

class ItemView extends StatelessWidget {
  const ItemView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Image.network(
            "https://www.elnacional.cat/uploads/s1/81/77/78/2/65151441-2246763512059987-77371882352660907-n_1_630x630.jpeg",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 25.0)
      ],
    );
  }
}