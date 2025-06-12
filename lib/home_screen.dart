import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_pakaian/item_screen.dart';

class HomeScreen extends StatefulWidget {
   final String username;
   final String email;
   HomeScreen({required this.username, required this.email});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double lebarLayar = MediaQuery.of(context).size.width;
    double tinggiLayar = MediaQuery.of(context).size.height;
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
                      ],
                    ),
                  ],
                ),
              ),
              leading: Builder(
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  );
                },
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: IconButton(
                    onPressed: () {
                      showSearch(context: context, delegate: MySearchDelegate());
                    },
                    icon: const Icon(Icons.search),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Container(
        width: 250,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(3.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "asset/pp.jpg",
                          ),
                          radius: 35.0,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${widget.username}",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "${widget.email}",
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  )),
              ProfileMenu(
                title: "Your Accounts",
                icon: Icons.person_outline,
                onPress: () {},
              ),
              ProfileMenu(
                title: "Your Order",
                icon: Icons.shopping_bag_outlined,
                onPress: () {},
              ),
              ProfileMenu(
                  title: "Wallet", icon: Icons.wallet_outlined, onPress: () {}),
              ProfileMenu(
                  title: "History", icon: Icons.history, onPress: () {}),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              ProfileMenu(
                title: "Information",
                icon: Icons.info_outline_rounded,
                onPress: () {},
              ),
              ProfileMenu(
                title: "Settings",
                icon: Icons.settings,
                onPress: () {},
              ),
              ProfileMenu(
                title: "Help",
                icon: Icons.help_outline_rounded,
                onPress: () {},
              ),
              const SizedBox(
                height: 50,
              ),
              ProfileMenu(
                title: "Logout",
                icon: Icons.logout_outlined,
                textColor: Colors.red,
                endIcon: false,
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hello ${widget.username}",
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Lets shop something!",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.black45,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.only(left: 10),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Shop the new Stone Island Collection",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                      ),
                                    ),
                                    Container(
                                      width: 90,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Shop Now",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                "asset/jaket1.png",
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.25,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.only(left: 10),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Stone Island ARCHIVIO",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                      ),
                                    ),
                                    Container(
                                      width: 90,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Shop Now",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                "asset/jaket2.png",
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.25,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.only(left: 10),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Stone Island Stella 30th Anniversary",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                      ),
                                    ),
                                    Container(
                                      width: 90,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Shop Now",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                "asset/jaket3.png",
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.25,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Categories",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.02,
                          vertical: MediaQuery.of(context).size.height * 0.01,
                        ),
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: MediaQuery.of(context).size.width * 0.44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                              spreadRadius: 1,
                            ),
                          ],
                        ),

                        //MENU 1
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "20% off",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  // Icon(
                                  //   Icons.favorite,
                                  //   color: Colors.redAccent,
                                  //   size: 20,
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Menu1()));
                                },
                                child: Container(
                                    height: 105,
                                    width: 105,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage('asset/Menu1.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "4100062 MUSSOLA GOMMATA-TC",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Padded jacket with hood, water and wind resistant",
                                      style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "\$1.209,97",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.02,
                          vertical: MediaQuery.of(context).size.height * 0.01,
                        ),
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: MediaQuery.of(context).size.width * 0.44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                              spreadRadius: 1,
                            ),
                          ],
                        ),

                        //MENU 2
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "50% off",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  // Icon(
                                  //   Icons.favorite_border,
                                  //   color: Colors.redAccent,
                                  //   size: 20,
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Menu2()));
                                },
                                child: Container(
                                    height: 105,
                                    width: 105,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage('asset/Menu2.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "3100016 SUPIMA COTTON TWILL STRETCH-TC",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Cargo pants with nylon belt",
                                      style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "\$414,85",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.02,
                          vertical: MediaQuery.of(context).size.height * 0.01,
                        ),
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: MediaQuery.of(context).size.width * 0.44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                              spreadRadius: 1,
                            ),
                          ],
                        ),

                        //MENU 3
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "30% off",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  // Icon(
                                  //   Icons.favorite,
                                  //   color: Colors.redAccent,
                                  //   size: 20,
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Menu3()));
                                },
                                child: Container(
                                    height: 105,
                                    width: 105,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage('asset/Menu3.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "4100093 MEMBRANA 3L TC",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Hooded jacket, breathable and water resistant",
                                      style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "\$864,26",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.02,
                          vertical: MediaQuery.of(context).size.height * 0.01,
                        ),
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: MediaQuery.of(context).size.width * 0.44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                              spreadRadius: 1,
                            ),
                          ],
                        ),

                        //MENU 4
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "40% off",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  // Icon(
                                  //   Icons.favorite,
                                  //   color: Colors.redAccent,
                                  //   size: 20,
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Menu4()));
                                },
                                child: Container(
                                    height: 105,
                                    width: 105,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage('asset/Menu4.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1200003 ORGANIC STRETCH BROKEN",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Overshirt con zip",
                                      style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 23,
                                    ),
                                    Text(
                                      "\$518,56",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                       margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.02,
                          vertical: MediaQuery.of(context).size.height * 0.01,
                        ),
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: MediaQuery.of(context).size.width * 0.44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                              spreadRadius: 1,
                            ),
                          ],
                        ),

                        //MENU 5
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "10% off",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  // Icon(
                                  //   Icons.favorite,
                                  //   color: Colors.redAccent,
                                  //   size: 20,
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Menu5()));
                                },
                                child: Container(
                                    height: 105,
                                    width: 105,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage('asset/Menu5.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "9100011 WEATHERPROOF COTTON CANVAS",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Cap with Compass patch",
                                      style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "\$224,71",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.02,
                          vertical: MediaQuery.of(context).size.height * 0.01,
                        ),
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: MediaQuery.of(context).size.width * 0.44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                              spreadRadius: 1,
                            ),
                          ],
                        ),

                        //MENU 6
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "10% off",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  // Icon(
                                  //   Icons.favorite,
                                  //   color: Colors.redAccent,
                                  //   size: 20,
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Menu6()));
                                },
                                child: Container(
                                    height: 105,
                                    width: 105,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage('asset/Menu6.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "5100018 COTTON FANCY YARN",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Full-zip hooded cardigan with a handcrafted look",
                                      style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "\$305,37",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.02,
                          vertical: MediaQuery.of(context).size.height * 0.01,
                        ),
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: MediaQuery.of(context).size.width * 0.44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                              spreadRadius: 1,
                            ),
                          ],
                        ),

                        //MENU 7
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "5% off",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  // Icon(
                                  //   Icons.favorite,
                                  //   color: Colors.redAccent,
                                  //   size: 20,
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Menu7()));
                                },
                                child: Container(
                                    height: 105,
                                    width: 105,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage('asset/Menu7.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "7100014 NYLON FROSTED",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Soft, water-repellent fishtail parka",
                                      style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "\$1.129,30",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.02,
                          vertical: MediaQuery.of(context).size.height * 0.01,
                        ),
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: MediaQuery.of(context).size.width * 0.44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              offset: Offset(0, 0),
                              spreadRadius: 1,
                            ),
                          ],
                        ),

                        //MENU 8
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "5% off",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  // Icon(
                                  //   Icons.favorite,
                                  //   color: Colors.redAccent,
                                  //   size: 20,
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Menu8()));
                                },
                                child: Container(
                                    height: 105,
                                    width: 105,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage('asset/Menu8.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "4100097 NYLON METAL",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Raincoat with slightly windproof hood",
                                      style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "\$910,36",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.black,
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
      ),
      title: Text(title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          )?.apply(color: textColor)),
      trailing: endIcon
          ? Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            )
          : null,
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<Map<String, dynamic>> searchTerms = [
    {
      'name': '4100062 MUSSOLA GOMMATA-TC',
      'widget': Menu1(),
    },
    {
      'name': '3100016 SUPIMA COTTON TWILL STRETCH-TC',
      'widget': Menu2(),
    },
    {
      'name': '4100093 MEMBRANA 3L TC',
      'widget': Menu3(),
    },
    {
      'name': '1200003 ORGANIC STRETCH BROKEN',
      'widget': Menu4(),
    },
    {
      'name': '9100011 WEATHERPROOF COTTON CANVAS',
      'widget': Menu5(),
    },
    {
      'name': '5100018 COTTON FANCY YARN',
      'widget': Menu6(),
    },
    {
      'name': '7100014 NYLON FORSTED',
      'widget': Menu7(),
    },
    {
      'name': '4100097 NYLON METAL',
      'widget': Menu8(),
    },
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          Icons.clear,
          color: Colors.black,
        ),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios_new,
        color: Colors.black,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Map<String, dynamic>> matchQuery = [];
    for (var item in searchTerms) {
      if (item['name'].toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(
            result['name'],
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 13,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => result['widget']),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Map<String, dynamic>> matchQuery = [];
    for (var item in searchTerms) {
      if (item['name'].toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(
            result['name'],
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 13,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => result['widget']),
            );
          },
        );
      },
    );
  }
}
