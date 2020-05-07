import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:ZTBLMobile/services/image_service.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
final auth = FirebaseAuth.instance;
final reference = FirebaseDatabase.instance.reference().child('Circulars');
class FAQs extends StatefulWidget {
  @override
  _FAQsState createState() => _FAQsState();
}
class _FAQsState extends State<FAQs> {
  @override
  Widget build(BuildContext context) {
    return ListView(
    children: <Widget>[
      Card(
          //elevation: 2.0,
          //margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9), borderRadius: BorderRadius.circular(2.0)),
            child: new ExpansionTile(
             title: new Text("What is ZTBL Mobile",
				    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
              trailing: new Icon(Icons.arrow_downward, color: Colors.white,),
              children: <Widget>[      
                Padding(
                child: new Text("ZTBL Mobile App allows to conduct financial transactions remotely using a mobile device such as a smartphone or tablet. ",style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontFamily: 'Cardo',),textAlign: TextAlign.justify,),       
                padding: EdgeInsets.fromLTRB(14, 0, 8, 0),
                ),               
              ],
              ),
          ),),
          Card(
          //margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: new ExpansionTile(
             title: new Text("What do I require to use ZTBL Mobile",
				style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
			  ),
              trailing: new Icon(Icons.arrow_downward, color: Colors.white,),
              children: <Widget>[
                Padding(
                child: new Text("Internet Connection and Activated ZTBL Debit / Credit Card.",style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontFamily: 'Cardo',), textAlign: TextAlign.justify,),
                  padding: EdgeInsets.fromLTRB(14, 0, 8, 0),
                ),  
              ],
              ),
          ),),
          Card(
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9), shape: BoxShape.rectangle
            ),
            child: new ExpansionTile(
             title: new Text("What is Scan To Pay",
				    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
			  ),
              trailing: new Icon(Icons.arrow_downward, color: Colors.white,),
              children: <Widget>[
                Padding(
                  child: new Text("Scan To Pay is a contactless payment method which can performed by scanning a QR code from a mobile app. This is an alternative to doing electronic funds transfer at point of sale using a payment terminal.",style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontFamily: 'Cardo',),textAlign: TextAlign.justify,),
                  padding: EdgeInsets.fromLTRB(14, 0, 8, 0),
                  ),
              ],
              ),
          ),),
          Card(
          //margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: new ExpansionTile(
             title: new Text("How do I use Scan To Pay",
				      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
			        ),
              trailing: new Icon(Icons.arrow_downward, color: Colors.white,),
              children: <Widget>[  
                Padding(child: new Text("Login to ZTBL Mobile App using registered email and password, click Scan To Pay and scan the QR displayed, click the pay button and you're done! You will instantly receive an SMS/email confirming your payment.",style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontFamily: 'Cardo',),textAlign: TextAlign.justify,),
                padding: EdgeInsets.fromLTRB(14, 0, 8, 0),
                ),
              ],
              ),
          ),),
          Card(
          //margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: new ExpansionTile(
             title: new Text("Can I perform transaction to other Bank accounts through ZTBL Mobile",
				style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
			  ),
              trailing: new Icon(Icons.arrow_downward, color: Colors.white,),
              children: <Widget>[
                Padding(
                  child: new Text("ZTBL Mobile App allows you to transfer funds from your account to any other ZTBL Account and 1-Link Member bank accounts.",style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontFamily: 'Cardo',),textAlign: TextAlign.justify,),
                padding: EdgeInsets.fromLTRB(14, 0, 8, 0),
                ),
                
              ],
              ),
          ),),
          Card(
          //margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: new ExpansionTile(
             title: new Text("Can I apply for a Cheque Book",
				style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
			  ),
              trailing: new Icon(Icons.arrow_downward, color: Colors.white,),
              children: <Widget>[
                Padding(
                  child: new Text("Yes, Registered users can request for a cheque book by clicking on apply button.",style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontFamily: 'Cardo',),textAlign: TextAlign.justify,),
                padding: EdgeInsets.fromLTRB(14, 0, 8, 0),
                ),
               
              ],
              ),
          ),),

    ],
  );
  }
}
class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  Completer<GoogleMapController> _controller1 = Completer();
  static final CameraPosition _kGooglePlex1 = CameraPosition(
    target: LatLng(33.697820, 73.063884),
    zoom: 16.4746,
  );
  @override
  Widget build(BuildContext context) {
      return Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xFF1873e8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                     Card(
                       child: new ListTile(
            title: new Text("111-30-30-30",
				    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
			      ),
              leading: new Icon(Icons.local_phone),),
          //margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          ),
          Card(
          //margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: new ListTile(
              title: new Text("contactus@ztbl.com.pk",
				    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
			      ),
              leading: new Icon(Icons.email),),), 
          Card(
          //margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: new ListTile(
              title: new Text("01 Faisal Ave, G-7, Islamabad",
				    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
			      ),
              leading: new Icon(Icons.location_on),),), 
                ],
              ),
            ),
            Expanded(
              child: Padding(
                child: GoogleMap(mapType: MapType.hybrid,
        mapToolbarEnabled: true,
        cameraTargetBounds: CameraTargetBounds.unbounded,
        initialCameraPosition: _kGooglePlex1,
        onMapCreated: (GoogleMapController controller) {
          _controller1.complete(controller);
        },
        ),
padding: EdgeInsets.all(8.0),
              ),
      
    ),
          ],
        ),
      );
  }
}
class Circulars extends StatefulWidget {
  @override
  _CircularsState createState() => _CircularsState();
}
class _CircularsState extends State<Circulars> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return FirebaseAnimatedList(      
              query: reference,
              sort: (a, b) => b.key.compareTo(a.key),
              padding: new EdgeInsets.all(8.0),
              reverse: false,
              itemBuilder: (_, DataSnapshot snapshot,
                  Animation<double> animation, int index) {

                return new ImageService(snapshot);
              },
            );
  }
  
}
