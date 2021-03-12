import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/screen_2.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ScreenTwo()));
        },
        child: Icon(
          Icons.chevron_right,
          size: 25,
          color: Colors.white,
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Center(
            child: Container(
              // height: MediaQuery.of(context).size.height * 0.7 ,
              // width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1580651214613-f4692d6d138f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fGZhc2hpb24lMjBtb2RlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 10,
            child: Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Get ",
                            style: GoogleFonts.roboto(
                                fontSize: 30, color: Colors.grey[900]),
                            children: [
                          TextSpan(
                            text: "20% Discount",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold, fontSize: 35),
                          )
                        ])),
                    Text(
                      "New Arrivals\n",
                      style: GoogleFonts.roboto(fontSize: 30),
                    ),
                    Text(
                      "Polish up your selfies to make yourself \nmore beautiful with this app.",
                      style: GoogleFonts.robotoMono(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
