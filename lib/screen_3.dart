import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenThree extends StatelessWidget {
  TextStyle textStyle = GoogleFonts.roboto(
      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10);

  buildUnseletedItems(String size, Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 16,
        backgroundColor: color == null ? Colors.black : Colors.white,
        child: CircleAvatar(
            child: Center(child: Text(size, style: textStyle)),
            radius: 14,
            backgroundColor: color != null ? color : Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Expanded(
              child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1593888146486-85f603007a78?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8cHVyc2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Select Size",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildUnseletedItems("S", null),
                      buildUnseletedItems("M", null),
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                            child: Text("L",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            radius: 10,
                            backgroundColor: Colors.black),
                      ),
                      buildUnseletedItems("XL", null),
                      buildUnseletedItems("XXL", null),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Select Color",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                            child: Text("",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            radius: 14,
                            backgroundColor: Colors.red),
                      ),
                      buildUnseletedItems("", Colors.black),
                      buildUnseletedItems("", Colors.lightBlue),
                      buildUnseletedItems("", Colors.amber),
                      buildUnseletedItems("", Colors.blueGrey),
                    ],
                  ),
                ),
                ListTile(
                    trailing: SizedBox(
                      height: 30,
                      child: ElevatedButton(
                        child: Text("Book Nearby"),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.black),
                      ),
                    ),
                    title: Text(
                      "Custom Tailor",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    )),
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: SizedBox(
              width: double.maxFinite,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.black),
                child: Text(
                  "Buy",
                  style: GoogleFonts.roboto(
                      color: Colors.grey[100],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
