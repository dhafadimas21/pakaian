import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_pakaian/home_screen.dart';

class Notifikasi extends StatefulWidget {
  const Notifikasi({super.key});

  @override
  State<Notifikasi> createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: true,
              flexibleSpace: Container(
                padding: const EdgeInsets.only(right: 16, left: 16, top: 22),
                height: 80,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage('asset/AppBar.png'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 140,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('asset/Logoappbar.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // const SizedBox(
                        //   width: 15,
                        // ),
                        // // Text(
                        // //   'Stone Island',
                        // //   style: GoogleFonts.poppins(
                        // //     fontWeight: FontWeight.bold,
                        // //     fontSize: 20,
                        // //     color: Colors.black,
                        // //   ),
                        // // )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            Image.asset(
              'asset/orang.png',
              width: 250,
            ),
            Text(
              "No orders yet",
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Colors.black45,
              ),
            ),
            const SizedBox(height: 50,),
            InkWell(
             onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(username: '', email: '',)));
             },
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Shop now!!!",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
