import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/screen_3.dart';

class ScreenTwo extends StatelessWidget {
  buildPhotComponent(BuildContext context, String imageUrl, String title) {
    return Column(children: [
      InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ScreenThree()));
        },
        child: Container(
          height: 170,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Text(title, style: GoogleFonts.roboto(fontWeight: FontWeight.bold))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fGxhZHklMjBtb2RlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: RichText(
              text: TextSpan(
                  text: "Let's\n",
                  style:
                      GoogleFonts.roboto(fontSize: 30, color: Colors.grey[900]),
                  children: [
                    TextSpan(
                      text: "Get Started!",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, fontSize: 35),
                    )
                  ]),
            ),
          ),
          Expanded(
              child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildPhotComponent(
                          context,
                          "https://images.unsplash.com/photo-1541216970279-affbfdd55aa8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8bGFkeSUyMG1vZGVsfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                          "Woman"),
                      buildPhotComponent(
                          context,
                          "https://images.unsplash.com/photo-1461799821556-055545cf32dc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
                          "Man"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildPhotComponent(
                          context,
                          "https://images.unsplash.com/photo-1602030028438-4cf153cbae9e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Ym95JTIwY2hpbGR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                          "Boy"),
                      buildPhotComponent(
                          context,
                          "https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8Y2hpbGR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                          "Girl"),
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
