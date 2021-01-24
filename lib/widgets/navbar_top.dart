import 'package:flutter/material.dart';

class NavBarTop extends StatelessWidget {
  const NavBarTop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      minimum: EdgeInsets.only(top:40.0),
      child: Row(
      
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[  
          Image.asset(
            'assets/images/netflix-logo.png', 
            width: 40.0
          ),
          Text(
            "Series",
            style:TextStyle(
              color:Colors.white,
              fontSize: 16.0
            )
          ),
          Text(
            "Películas",
            style:TextStyle(
              color:Colors.white,
              fontSize: 16.0
            )
          ),
          Text( 
            "Mi lista",
            style:TextStyle(
              color:Colors.white,
              fontSize: 16.0
            )
          ),

        ],
      
      ),
    );
  }
}