import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:netflix/widgets/item_trailer.dart';

import 'item_view.dart';
import 'navbar_top.dart';

class HeadPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return ListView(
      children: <Widget>[
        _imagen(),
        barTrailer("Avances", ItemTrailer(), 10),
        SizedBox(height: 10.0),
        barTrailer("Peliculas relacionadas", ItemView(), 10),
        SizedBox(height: 10.0),
        barTrailer("Programas sobre accion", ItemView(), 10),
        SizedBox(height: 10.0),
        barTrailer("Programas sobre terror", ItemView(), 10),
        SizedBox(height: 10.0),
        barTrailer("Programas sobre Pasion", ItemView(), 10),
        SizedBox(height: 10.0),
        barTrailer("Programas sobre Amor", ItemView(), 10),

        // barView(),
        // _content(),
      ],
    );

  }
  
  Widget _imagen() {
    return Stack(
          children: [
            Image.network(
              "https://staticuestudio.blob.core.windows.net/buhomag/2018/10/Cartel-de-Elite-en-Netflix-1.jpg",
              height: 550.0,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              height: 550.1,
              decoration: BoxDecoration(
                gradient:LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black12,
                    Colors.black
                  ]
                )
              ),
            ),
            _content(),

          ]
    );
  }

  Widget _content(){
    return Column(
      children: <Widget>[
        NavBarTop(),
        SizedBox(height: 350.0),
        infoSerie(),
        SizedBox(height: 30.0),
        this.barOptions(),
        SizedBox(height: 30.0),
        // barTrailer(),
        // ItemView(),
        // SizedBox(height: 30.0),
        // barView(),
      ],
    );
  }

  Widget barTrailer(String title, Widget item, int size){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:EdgeInsets.symmetric(horizontal:8.0, vertical: 10.0),
          child: Text(
            title,
            style:TextStyle(color: Colors.white, fontSize: 25.0,fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: size,
            itemBuilder: (context, index) {
              return item;
            },
          )
        )
      ],
    );
  }

  Widget infoSerie(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [
        Text('Telenovelesco',
          style: TextStyle(color: Colors.white, fontSize: 10.0
          )
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text('Suspenso Insostenible',
          style: TextStyle(color: Colors.white, fontSize: 10.0
          )
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text('De suspenso',
          style: TextStyle(color: Colors.white, fontSize: 10.0
          )
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text('Adolescentes',
          style: TextStyle(color: Colors.white, fontSize: 10.0
          )
        ),
      ],
    );

  }

  Widget barOptions(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        this.containerOptions(Icon(Icons.check,color: Colors.white), "Mi lista"),
        SizedBox(width: 40.0),
        this.play(),
        SizedBox(width: 40.0),
        this.containerOptions(Icon(Icons.info_outline_rounded,color: Colors.white), "Información"),
      ],
    );
  }

  Widget containerOptions(Icon icon, String title){
    return Column(
      children: [
        icon,
        Text(
          title,
          style:TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ],
    );
  }

  Widget play(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      width: 150.0,
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: Colors.white
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.play_arrow,size: 30),
          Text(
            'Reproducir',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:17
            ),
          )
        ],
      ),
    );
  }

}