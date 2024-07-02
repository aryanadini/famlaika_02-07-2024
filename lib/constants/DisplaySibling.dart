import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplaySibling extends StatelessWidget {
  double cthgt;
  double ctwdt;
  double imagehgt;
  double imagewdt;
  double imagebradius;
  String? imageUrl;
  String? persongname;
  String? personrelation;

  DisplaySibling(
      {super.key,
        required this.imagehgt,
        required this.imagewdt,
        required this.imagebradius,
        required this.cthgt,
        this.imageUrl,
        this.persongname,
        this.personrelation,
        required this.ctwdt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cthgt + imagehgt,
      width: ctwdt + imagewdt,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xff1a1a1a),
              ),
              height: cthgt,
              width: ctwdt,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    persongname ?? "Victoria",
                    style: TextStyle(fontSize: 22, color: Colors.white70),
                  ),
                  Text(
                    personrelation ?? "Relation",
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 12,
            left: 14,
            child: Container(
              height: imagehgt,
              width: imagewdt,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(imagebradius),
                  bottomRight: Radius.circular(imagebradius),
                  topLeft: Radius.circular(imagebradius),
                ),
                border: Border.all(
                  width: 1,
                  color: Colors.amber,
                ),
                image: DecorationImage(
                  image: AssetImage("${imageUrl}"),
                  // Use AssetImage for local assets
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DisplaySmallWidget extends StatelessWidget {
  double simagehgt;
  double simagewdt;
  double simagebradius;
  AssetImage? sinblingimage;
  String? stext;
  String siblingname;

  DisplaySmallWidget({
    super.key,
    required this.simagehgt,
    required this.simagewdt,
    required this.simagebradius,
    required this.siblingname,
    this.sinblingimage,
    this.stext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: simagehgt + (MediaQuery.of(context).size.width * 0.1),
      width: simagewdt,
      child: Stack(
        children: [
          Positioned(
              top: -1,
              left: simagewdt / 2,
              child: CContainer(
                cheight: (MediaQuery.of(context).size.width * 0.1),
                cwidth: 1,
              )),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              height: simagehgt,
              width: simagewdt,
              decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  image: sinblingimage != null
                      ? DecorationImage(
                    image: sinblingimage!,
                    fit: BoxFit.cover,
                  )
                      : null,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(simagebradius),
                    bottomRight: Radius.circular(simagebradius),
                    topLeft: Radius.circular(simagebradius),
                  ),
                  border: Border.all(
                    width: 1,
                    color: Colors.amber,
                  )),
              child: sinblingimage == null
                  ? Center(
                child: Text(
                  stext ?? "",
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),
              )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}

class CContainer extends StatelessWidget {
  double cheight;
  double cwidth;
  CContainer({super.key, required this.cheight, required this.cwidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: cheight,
      width: cwidth,
    );
  }
}