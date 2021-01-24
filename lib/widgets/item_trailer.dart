import 'package:flutter/material.dart';

class ItemTrailer extends StatelessWidget {
  const ItemTrailer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children:[
            Container(
              width: 110.0,
              height: 110.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110.0),
                border: Border.all(
                  color: Colors.yellow,
                    width: 2.0
                )
              ),
              child: ClipOval(
                child: Image.network("https://www.unotv.com/portal/unotv/imagenes/177817-Principal.jpg", 
                fit: BoxFit.cover,
                )
              ),
            ),

            Image.asset('assets/images/avengers-Logo.png',width: 100.0)

          ],
        ),

        SizedBox(width: 10.0)

      ],
    );
  }
}