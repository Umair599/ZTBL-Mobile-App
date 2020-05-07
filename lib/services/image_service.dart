import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:transparent_image/transparent_image.dart';

@override
class ImageService extends StatelessWidget {
  final DataSnapshot snapshot;
  ImageService(this.snapshot);
  final bool _liked = false;
  @override
  Widget build(BuildContext context) {
//    var size = MediaQuery.of(context).size;
//    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.2;
//    final double itemWidth = size.width;
    return new Container(
      child: new InkWell(
        child: new Card(
          elevation: 2.5,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: snapshot.value['IMAGE'],
                alignment: Alignment.topCenter,
                fit: BoxFit.scaleDown,
              ),
//            new Image.network(snapshot.value['IMAGE']),
              new Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 0.0),
                child: new Text(
                  snapshot.value['Title'],
                  style:
                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 0.0),
                child: new Text(
                  snapshot.value['DESCRIPTION'],
                  style: new TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 16.0),
                ),
              ),
              new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text(snapshot.value['username'],
                      style: new TextStyle(color: Colors.blueAccent)),
                  new IconButton(
                      icon: _liked
                          ? new Icon(
                              Icons.favorite,
                              color: Colors.blueAccent,
                            )
                          : new Icon(
                              Icons.favorite_border,
                              color: Colors.blueAccent,
                            ),
                      onPressed: () {
                        Scaffold.of(context).showSnackBar(new SnackBar(
                              content: new Text("Coming Soon!"),
                            ));
                      }),
                ],
              ),
            ],
          ),
        ),
        onTap: (){
          // Scaffold.of(context).showSnackBar(new SnackBar(
          //   content: new Text("Clicked on Blog "+snapshot.value['Title']),
          // ));
        },
      ),
    );
  }
}
