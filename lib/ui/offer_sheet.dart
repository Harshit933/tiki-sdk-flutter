/// {@category UI}
import 'package:flutter/material.dart';
import 'package:tiki_sdk_flutter/ui/completion_sheet.dart';
import 'package:tiki_sdk_flutter/ui/text_viewer.dart';

import 'assets/icons/tiki_sdk_icons_icons.dart';
import 'offer.dart';

/// A dismissible bottom sheet that shows an [Offer] to the user.
///
/// This bottom sheet is the first UI in the TIKI user flow.
/// There are 4 available actions in this screen:
///  - learnMore: will show the [TextViewer] screen with [learnMoreText] loaded.
///  - deny: will show the [CompletionSheet.backoff].
///  - allow: will show the [CompletionSheet.awesome]. If [requireTerms] is
///  true, it will show the [TextViewer] with [termsText] for the user accept the
///  terms before the [CompletionSheet.awesome] screen is shown.
class OfferSheet extends StatelessWidget {
  final Offer offer;
  final bool requireTerms;
  final String? termsText;
  final String? learnMoreText;
  final String titleVerb;
  final Color primaryColor;
  final Color accentColor;
  final Color backgroundColor;

  const OfferSheet(this.offer,
      {super.key,
      this.requireTerms = false,
      this.termsText,
      this.learnMoreText = "",
      this.titleVerb = "TRADE",
      this.primaryColor = const Color.fromRGBO(28, 0, 0, 1),
      this.accentColor = const Color.fromRGBO(0, 178, 114, 1),
      this.backgroundColor = const Color.fromRGBO(246, 246, 246, 1)});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: RichText(
                            text: TextSpan(
                                text: titleVerb,
                                style: TextStyle(
                                    fontFamily: "SpaceGrotesk",
                                    package: "tiki_sdk_flutter",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor),
                                children: [
                              TextSpan(
                                  text: " YOUR ",
                                  style: TextStyle(color: accentColor)),
                              TextSpan(
                                  text: "DATA",
                                  style: TextStyle(color: primaryColor)),
                            ]))),
                    IconButton(
                        onPressed: () => print("learnmore"),
                        icon: Icon(TikiSdkIcons.icon_circle_question)),
                  ])),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(13, 0, 0, 0),
                          offset: Offset(4, 4))
                    ],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Image.asset("lib/ui/assets/images/offer_sample.png", package: "tiki_sdk_flutter")),
                        RichText(
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                                text:
                                    "Trade your IDFA (kind of like a serial # for your phone) for a discount.",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    height: 1.2,
                                    color: Color.fromARGB(150, 0, 0, 0),
                                    fontFamily: "SpaceGrotesk",
                                    package: "tiki_sdk_flutter"))),
                      ],
                    ))),
          ),
          Padding(
              padding: EdgeInsets.only(top: 24.0, bottom:32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 16),
                                child: Text(
                                  "HOW YOUR DATA WILL BE USED",
                                  style: TextStyle(
                                      fontFamily: "SpaceGrotesk",
                                      package: "tiki_sdk_flutter",
                                      fontSize: 16,
                                      height: 1.8,
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor),
                                )),
                            Padding(
                              padding: EdgeInsets.only(bottom: 16),
                              child: Row(children: [
                                Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(TikiSdkIcons.check_icon,
                                        color: Color.fromRGBO(0, 178, 114, 1),
                                        size: 12)),
                                Text(
                                  "Learn how our ads perform",
                                  style: TextStyle(
                                      fontFamily: "SpaceGrotesk",
                                      package: "tiki_sdk_flutter",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(0, 0, 0, 0.6)),
                                )
                              ]),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 16),
                              child: Row(children: [
                                Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(TikiSdkIcons.x_icon,
                                        color: Color.fromRGBO(199, 48, 0, 1),
                                        size: 12)),
                                Text(
                                  "Reach you on other platforms",
                                  style: TextStyle(
                                      fontFamily: "SpaceGrotesk",
                                      package: "tiki_sdk_flutter",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(0, 0, 0, 0.6)),
                                )
                              ]),
                            ),
                            Row(children: [
                                Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Icon(TikiSdkIcons.x_icon,
                                        color: Color.fromRGBO(199, 48, 0, 1),
                                        size: 12)),
                                Text(
                                  "Sold to other companies",
                                  style: TextStyle(
                                      fontFamily: "SpaceGrotesk",
                                      package: "tiki_sdk_flutter",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(0, 0, 0, 0.6)),
                                )
                              ]),
                          ]))
                ],
              )),
          Padding(padding: EdgeInsets.only(bottom: 50, left: 15, right: 15), child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              GestureDetector(
                onTap: () => print("Back Off"),
                child: Container(
                    width: 170,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1.0, color: accentColor),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text("Back Off", style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  height: 1.2,
                  color: Color.fromRGBO(28, 0, 0, 1),
                  fontFamily: "SpaceGrotesk",
                  package: "tiki_sdk_flutter")))),
              ),
              GestureDetector(
                onTap: () => print("I'm in!"),
                child: Container(
                    width: 170,
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        color: accentColor,
                        border: Border.all(width: 1.0, color: accentColor),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("I'm in", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        height: 1.2,
                        color: Colors.white,
                        fontFamily: "SpaceGrotesk",
                        package: "tiki_sdk_flutter")))),
              )
            ])
          )
        ],
      ),
    );
  }
}
