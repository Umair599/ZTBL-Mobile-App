import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ZTBLMobile/services/authentication.dart';
import 'package:ZTBLMobile/pages/Information.dart';

class AppDrawer extends StatefulWidget {
  @override
  AppDrawer({Key key, this.auth, this.logoutCallback});
  final BaseAuth auth;
  final VoidCallback logoutCallback;
  @override
  _AppDrawerState createState() => _AppDrawerState();
}
class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: 200.0,
      child: Drawer(
        child: Column(
        //  crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          //  Padding(
             // padding: EdgeInsets.only(left: 15.0, top: 4.0),
              FlatButton.icon(
                icon: Icon(
                  Icons.close,
                  color: Color(0xFF1565C0),
                ),
                onPressed: ()=>Navigator.of(context).pop(),
                padding: EdgeInsets.only(right: 45.0),
                label: Text("ZTBL Mobile",
                    style: TextStyle(
                       // fontWeight: FontWeight.w400,
                       
                        fontSize: 16.0,
                        color: Colors.black)),
              //  color: Color(0xFFB9F6CA),
              ),
           // ),
              new ListTile(
              title:new Text("Pay"),
              leading: new Icon(Icons.payment),
              onTap: (){
                Navigator.of(context).pop();
                },
            ),
            Divider(),
              new ListTile(
              title:new Text("Transfer"),
              leading: new Icon(Icons.sync),
              onTap: (){
                Navigator.of(context).pop();
                },
            ),
            Divider(),
            new ListTile(
              title:new Text("Apply"),
              leading: new Icon(Icons.assignment),
              onTap: (){
                Navigator.of(context).pop();
                },
            ),
            Divider(),
              new ListTile(
              title:new Text("Insurance"),
              leading: ImageIcon(new AssetImage('images/pay.png')),
              onTap: (){
                Navigator.of(context).pop();
                },
            ),
            Divider(),
              new ListTile(
              title:new Text("Information"),
              leading: new Icon(Icons.info),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context,     
                MaterialPageRoute(
                builder: (context)=>
                Information()
            ));
                },
            ),
            Divider(),
            new ListTile(
              title:new Text("Logout"),
              leading: new Icon(Icons.exit_to_app),
              onTap: (){
                signOut();
               
                },
            ),
          ],
        ),
      ),
    );
  }

  signOut() async{
              try{
              await widget.auth.signOut();
              widget.logoutCallback();
              }
              catch(e)
              {print(e);}
  }
}