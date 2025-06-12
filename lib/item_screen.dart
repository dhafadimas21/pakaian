import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shop_pakaian/cart_provider.dart';

class Product {
  final String name;
  final String image;
  final String price;
  int quantity;

  Product({
    required this.name,
    required this.image,
    required this.price,
    this.quantity = 1,
  });
}

class Menu1 extends StatelessWidget {
  const Menu1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      "asset/Menu1.png",
                      width: 400,
                      height: 400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "4100062 MUSSOLA GOMMATA-TC",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                  Text(
                    "Padded jacket with hood, water and wind resistant",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 25,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("(1,345)")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$1.209,97",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Jacket in lightweight 100% recycled nylon rep with windproof and partially water-resistant coating, with hood, cotton fleece sleeves and light polyester padding. Garment dyed.",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01,
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white, // Changed text color to white for contrast
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (context) {
                    return DraggableScrollableSheet(
                      initialChildSize: 0.3, // Changed from 0.4 to 0.3
                      maxChildSize: 0.6,
                      minChildSize: 0.2,
                      builder: (_, controller) => Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, -5),
                            ),
                          ],
                        ),
                        child: ListView(
                          controller: controller,
                          children: [
                            Row(
                              children: [
                                Image.asset("asset/Menu1.png",
                                    width: 80, height: 80),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "4100062 MUSSOLA GOMMATA-TC",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "\$1.209,97",
                                        style: GoogleFonts.poppins(
                                          color: Colors.redAccent,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                final product = Product(
                                  name: "4100062 MUSSOLA GOMMATA-TC",
                                  image: "asset/Menu1.png",
                                  price: "1209.97",
                                  quantity: 1,
                                );
                                Provider.of<CartProvider>(context, listen: false)
                                    .addToCart(product);
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Item added to cart successfully!',
                                      style: GoogleFonts.poppins(),
                                    ),
                                    backgroundColor: Colors.black87.withOpacity(0.7),
                                    duration: Duration(seconds: 2),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    margin: EdgeInsets.all(10),
                                    animation: CurvedAnimation(
                                      parent: AnimationController(
                                        vsync: Navigator.of(context),
                                        duration: Duration(milliseconds: 500),
                                      )..forward(),
                                      curve: Curves.easeInOut,
                                    ),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                "add to cart",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                    child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white, // Changed from Colors.black to Colors.white
                  size: 30,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu2 extends StatelessWidget {
  const Menu2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      "asset/Menu2.png",
                      width: 350,
                      height: 350,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "3100016 SUPIMA® COTTON TWILL STRETCH-TCt",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                  Text(
                    "Loose fit cargo pants with nylon belt",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 25,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("(2,555)")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$414,85",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Stretch cotton twill cargo pants made from mercerized Supima® cotton yarn, with multiple pockets and a nylon webbing belt with buckle. Garment dyed.",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01,
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white, // Changed text color to white for contrast
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (context) {
                    return DraggableScrollableSheet(
                      initialChildSize: 0.3, // Changed from 0.4 to 0.3
                      maxChildSize: 0.6,
                      minChildSize: 0.2,
                      builder: (_, controller) => Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, -5),
                            ),
                          ],
                        ),
                        child: ListView(
                          controller: controller,
                          children: [
                            Row(
                              children: [
                                Image.asset("asset/Menu2.png",
                                    width: 80, height: 80),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "3100016 SUPIMA COTTON TWILL STRETCH-TC",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "\$414,85",
                                        style: GoogleFonts.poppins(
                                          color: Colors.redAccent,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                final product = Product(
                                  name: "3100016 SUPIMA® COTTON TWILL STRETCH-TCt",
                                  image: "asset/Menu2.png",
                                  price: "414.85",
                                  quantity: 1,
                                );
                                Provider.of<CartProvider>(context, listen: false)
                                    .addToCart(product);
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Item added to cart successfully!',
                                      style: GoogleFonts.poppins(),
                                    ),
                                    backgroundColor: Colors.black87.withOpacity(0.7),
                                    duration: Duration(seconds: 2),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    margin: EdgeInsets.all(10),
                                    animation: CurvedAnimation(
                                      parent: AnimationController(
                                        vsync: Navigator.of(context),
                                        duration: Duration(milliseconds: 500),
                                      )..forward(),
                                      curve: Curves.easeInOut,
                                    ),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                "add to cart",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                    child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white, // Changed from Colors.black to Colors.white
                  size: 30,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu3 extends StatelessWidget {
  const Menu3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      "asset/Menu3.png",
                      width: 400,
                      height: 400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "4100093 MEMBRANA 3L TC",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                  Text(
                    "Hooded jacket, breathable and water resistant",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 25,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("(1,550)")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$864,26",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Jacket in lightweight three-layer technical fabric protected by an imperceptible polyester base, with hood with horizontal drawstrings and back slit. Garment dyed.",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01,
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white, // Changed text color to white for contrast
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (context) {
                    return DraggableScrollableSheet(
                      initialChildSize: 0.3, // Changed from 0.4 to 0.3
                      maxChildSize: 0.6,
                      minChildSize: 0.2,
                      builder: (_, controller) => Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, -5),
                            ),
                          ],
                        ),
                        child: ListView(
                          controller: controller,
                          children: [
                            Row(
                              children: [
                                Image.asset("asset/Menu3.png",
                                    width: 80, height: 80),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "4100093 MEMBRANA 3L TC",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "\$864,26",
                                        style: GoogleFonts.poppins(
                                          color: Colors.redAccent,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                final product = Product(
                                  name: "4100093 MEMBRANA 3L TC",
                                  image: "asset/Menu3.png",
                                  price: "864.26",
                                  quantity: 1,
                                );
                                Provider.of<CartProvider>(context, listen: false)
                                    .addToCart(product);
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Item added to cart successfully!',
                                      style: GoogleFonts.poppins(),
                                    ),
                                    backgroundColor: Colors.black87.withOpacity(0.7),
                                    duration: Duration(seconds: 2),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    margin: EdgeInsets.all(10),
                                    animation: CurvedAnimation(
                                      parent: AnimationController(
                                        vsync: Navigator.of(context),
                                        duration: Duration(milliseconds: 500),
                                      )..forward(),
                                      curve: Curves.easeInOut,
                                    ),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                "add to cart",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                    child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white, // Changed from Colors.black to Colors.white
                  size: 30,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu4 extends StatelessWidget {
  const Menu4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      "asset/Menu4.png",
                      width: 400,
                      height: 400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1200003 ORGANIC STRETCH BROKEN TWILL COTTON 'OLD' EFFECT",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                  Text(
                    "Overshirt con zip",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 25,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("(3,105)")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$518,56",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Overshirt in cotone biologico stretch dall’aspetto leggermente vissuto, fettuccia applicata con passanti sul petto, tasche e zip a doppio cursore. Tinta in capo.",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01,
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white, // Changed text color to white for contrast
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (context) {
                    return DraggableScrollableSheet(
                      initialChildSize: 0.3, // Changed from 0.4 to 0.3
                      maxChildSize: 0.6,
                      minChildSize: 0.2,
                      builder: (_, controller) => Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, -5),
                            ),
                          ],
                        ),
                        child: ListView(
                          controller: controller,
                          children: [
                            Row(
                              children: [
                                Image.asset("asset/Menu4.png",
                                    width: 80, height: 80),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "1200003 ORGANIC STRETCH BROKEN",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "\$518,56",
                                        style: GoogleFonts.poppins(
                                          color: Colors.redAccent,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                final product = Product(
                                  name: "1200003 ORGANIC STRETCH BROKEN",
                                  image: "asset/Menu4.png",
                                  price: "518.56",
                                  quantity: 1,
                                );
                                Provider.of<CartProvider>(context, listen: false)
                                    .addToCart(product);
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Item added to cart successfully!',
                                      style: GoogleFonts.poppins(),
                                    ),
                                    backgroundColor: Colors.black87.withOpacity(0.7),
                                    duration: Duration(seconds: 2),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    margin: EdgeInsets.all(10),
                                    animation: CurvedAnimation(
                                      parent: AnimationController(
                                        vsync: Navigator.of(context),
                                        duration: Duration(milliseconds: 500),
                                      )..forward(),
                                      curve: Curves.easeInOut,
                                    ),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                "add to cart",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                    child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white, // Changed from Colors.black to Colors.white
                  size: 30,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu5 extends StatelessWidget {
  const Menu5({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      "asset/Menu5.png",
                      width: 350,
                      height: 350,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "9100011 WEATHERPROOF COTTON CANVAS_STONE ISLAND GHOST",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                  Text(
                    "Cap with Compass patch and adjustable slider",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 25,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("(10,555)")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$224,71",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Breathable and durable cap made of cotton canvas obtained from the best cotton fibres, which offer a natural barrier against wind and atmospheric agents.",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01,
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white, // Changed text color to white for contrast
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (context) {
                    return DraggableScrollableSheet(
                      initialChildSize: 0.3, // Changed from 0.4 to 0.3
                      maxChildSize: 0.6,
                      minChildSize: 0.2,
                      builder: (_, controller) => Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, -5),
                            ),
                          ],
                        ),
                        child: ListView(
                          controller: controller,
                          children: [
                            Row(
                              children: [
                                Image.asset("asset/Menu5.png",
                                    width: 80, height: 80),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "9100011 WEATHERPROOF COTTON CANVAS",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "\$224,71",
                                        style: GoogleFonts.poppins(
                                          color: Colors.redAccent,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                final product = Product(
                                  name: "9100011 WEATHERPROOF COTTON CANVAS",
                                  image: "asset/Menu5.png",
                                  price: "224.71",
                                  quantity: 1,
                                );
                                Provider.of<CartProvider>(context, listen: false)
                                    .addToCart(product);
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Item added to cart successfully!',
                                      style: GoogleFonts.poppins(),
                                    ),
                                    backgroundColor: Colors.black87.withOpacity(0.7),
                                    duration: Duration(seconds: 2),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    margin: EdgeInsets.all(10),
                                    animation: CurvedAnimation(
                                      parent: AnimationController(
                                        vsync: Navigator.of(context),
                                        duration: Duration(milliseconds: 500),
                                      )..forward(),
                                      curve: Curves.easeInOut,
                                    ),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                "add to cart",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                    child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white, // Changed from Colors.black to Colors.white
                  size: 30,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu6 extends StatelessWidget {
  const Menu6({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      "asset/Menu6.png",
                      width: 400,
                      height: 400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "5100018 COTTON FANCY YARN",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                  Text(
                    "Full-zip hooded cardigan with a handcrafted look",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 25,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("(2,555)")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$305,37",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hooded cardigan with ribbing and full-length zip in raw and irregular cotton yarn in plain knit, which creates a handcrafted look. Gauge 5.",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01,
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white, // Changed text color to white for contrast
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (context) {
                    return DraggableScrollableSheet(
                      initialChildSize: 0.3, // Changed from 0.4 to 0.3
                      maxChildSize: 0.6,
                      minChildSize: 0.2,
                      builder: (_, controller) => Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, -5),
                            ),
                          ],
                        ),
                        child: ListView(
                          controller: controller,
                          children: [
                            Row(
                              children: [
                                Image.asset("asset/Menu6.png",
                                    width: 80, height: 80),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "5100018 COTTON FANCY YARNt",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "\$305,37",
                                        style: GoogleFonts.poppins(
                                          color: Colors.redAccent,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                final product = Product(
                                  name: "5100018 COTTON FANCY YARNt",
                                  image: "asset/Menu6.png",
                                  price: "305.37",
                                  quantity: 1,
                                );
                                Provider.of<CartProvider>(context, listen: false)
                                    .addToCart(product);
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Item added to cart successfully!',
                                      style: GoogleFonts.poppins(),
                                    ),
                                    backgroundColor: Colors.black87.withOpacity(0.7),
                                    duration: Duration(seconds: 2),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    margin: EdgeInsets.all(10),
                                    animation: CurvedAnimation(
                                      parent: AnimationController(
                                        vsync: Navigator.of(context),
                                        duration: Duration(milliseconds: 500),
                                      )..forward(),
                                      curve: Curves.easeInOut,
                                    ),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                "add to cart",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                    child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white, // Changed from Colors.black to Colors.white
                  size: 30,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu7 extends StatelessWidget {
  const Menu7({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      "asset/Menu7.png",
                      width: 400,
                      height: 400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "7100014 NYLON FROSTED_STONE ISLAND GHOST",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                  Text(
                    "Soft, water-repellent fishtail parka",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 25,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("(2,555)")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$1.129,30",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Soft fishtail parka in special brushed Nylon Canvas, with drawstring and snap buttons at the bottom to reduce the length. Garment dyed with specific recipes.",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01,
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white, // Changed text color to white for contrast
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (context) {
                    return DraggableScrollableSheet(
                      initialChildSize: 0.3, // Changed from 0.4 to 0.3
                      maxChildSize: 0.6,
                      minChildSize: 0.2,
                      builder: (_, controller) => Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, -5),
                            ),
                          ],
                        ),
                        child: ListView(
                          controller: controller,
                          children: [
                            Row(
                              children: [
                                Image.asset("asset/Menu7.png",
                                    width: 80, height: 80),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "7100014 NYLON FROSTED_STONE ISLAND GHOST",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "\$1.129,30",
                                        style: GoogleFonts.poppins(
                                          color: Colors.redAccent,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                final product = Product(
                                  name: "7100014 NYLON FROSTED_STONE ISLAND GHOST",
                                  image: "asset/Menu7.png",
                                  price: "1129.30",
                                  quantity: 1,
                                );
                                Provider.of<CartProvider>(context, listen: false)
                                    .addToCart(product);
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Item added to cart successfully!',
                                      style: GoogleFonts.poppins(),
                                    ),
                                    backgroundColor: Colors.black87.withOpacity(0.7),
                                    duration: Duration(seconds: 2),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    margin: EdgeInsets.all(10),
                                    animation: CurvedAnimation(
                                      parent: AnimationController(
                                        vsync: Navigator.of(context),
                                        duration: Duration(milliseconds: 500),
                                      )..forward(),
                                      curve: Curves.easeInOut,
                                    ),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                "add to cart",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                    child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white, // Changed from Colors.black to Colors.white
                  size: 30,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu8 extends StatelessWidget {
  const Menu8({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      "asset/Menu8.png",
                      width: 400,
                      height: 400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "4100097 NYLON METAL WATRO-TC IN ECONYL",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                  Text(
                    "Raincoat with slightly windproof hood",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 25,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("(2,555)")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$910,36",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hooded jacket in Stone Island's iconic Nylon Metal made with ECONYL® regenerated yarns, slightly waterproof and windproof. Garment dyed with a double dyeing process and anti-drop.",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01,
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white, // Changed text color to white for contrast
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (context) {
                    return DraggableScrollableSheet(
                      initialChildSize: 0.3, // Changed from 0.4 to 0.3
                      maxChildSize: 0.6,
                      minChildSize: 0.2,
                      builder: (_, controller) => Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, -5),
                            ),
                          ],
                        ),
                        child: ListView(
                          controller: controller,
                          children: [
                            Row(
                              children: [
                                Image.asset("asset/Menu8.png",
                                    width: 80, height: 80),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "4100097 NYLON METAL WATRO-TC IN ECONYL",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "\$910,36",
                                        style: GoogleFonts.poppins(
                                          color: Colors.redAccent,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                final product = Product(
                                  name:
                                      "4100097 NYLON METAL WATRO-TC IN ECONYL",
                                  image: "asset/Menu8.png",
                                  price: "910.36",
                                  quantity: 1,
                                );
                                Provider.of<CartProvider>(context, listen: false)
                                    .addToCart(product);
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Item added to cart successfully!',
                                      style: GoogleFonts.poppins(),
                                    ),
                                    backgroundColor: Colors.black87.withOpacity(0.7),
                                    duration: Duration(seconds: 2),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    margin: EdgeInsets.all(10),
                                    animation: CurvedAnimation(
                                      parent: AnimationController(
                                        vsync: Navigator.of(context),
                                        duration: Duration(milliseconds: 500),
                                      )..forward(),
                                      curve: Curves.easeInOut,
                                    ),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                "add to cart",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black, // Changed from Colors.white to Colors.black
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Center(
                    child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white, // Changed from Colors.black to Colors.white
                  size: 30,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
