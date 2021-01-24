import 'package:flutter/material.dart';
import 'package:netflix/widgets/head_widget.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: HeadPage(),

      bottomNavigationBar: this.navBottom(),
    );
  }

  Widget navBottom() {

    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio'
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.search  ),
          label: 'Buscar'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_add),
          label: 'Proximamente'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          label: 'Descargas'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'Mas'
        ),
      ],
    );
  }
}