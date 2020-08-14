import 'package:flutter/material.dart';

//class LogInBackground extends StatelessWidget {
//  final screenHeight, screenWidth;
//
//  const LogInBackground({Key key, this.screenHeight, this.screenWidth})
//      : super(key: key);
//  @override
//  Widget build(BuildContext context) {
//
//    return Stack(
//      fit: StackFit.expand,
//      children: <Widget>[
//        Positioned(
//          left: -screenWidth * 0.10,
//          top: -screenWidth * 0.5,
//          child: Container(
//
//            height: screenWidth * 1.3,
//            width: screenWidth * 1.3,
//            decoration: BoxDecoration(
//              shape: BoxShape.circle,
//              image: DecorationImage(
//                  fit: BoxFit.scaleDown,
//                image:AssetImage('images/backlogin.jpg'),
//
//              ),
//              //color: Color(0xFF0000FF),
//
//
//            ),
//
//          ),
//        ),
//        Positioned(
//          left: 20,
//          right: 20,
//          top: screenHeight*0.5,
//          child: Text('abdo'),
//          //child: Image.asset("assets/images/google_text_logo.png",color: Color(0xFFECECEC).withOpacity(0.5),),
//        )
//      ],
//    );
//  }
//}

class LogInBackground extends StatefulWidget {
  LogInBackground({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LogInBackgroundState createState() => _LogInBackgroundState();
}

class _LogInBackgroundState extends State<LogInBackground> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color(0XFF013843),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 2.0),
            child:ClipPath(
              clipper: ClippingClass(),
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 290.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/backlogin.jpg'),)
                ),
              ),
            ),
          ),

//          Positioned(
//              top: 270,
//              left: 18.0,
//
//              child: Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Icon(FontAwesomeIcons.play,
//                    color: new Color(0xffd60506),
//                    size: 40.0),
//              )
//          ),

        ],
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height-40);
    path.quadraticBezierTo(size.width / 4, size.height,
        size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}