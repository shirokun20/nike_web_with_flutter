import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC1C1C1),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 300,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: 1440,
              height: 850,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.circular(55),
                border: Border.all(
                  width: 5,
                  color: Colors.white,
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  _layerJDT(),
                  _layerContent(),
                  _layerShoe(),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _layerJDT() {
    return Positioned(
      right: 30,
      top: 0,
      bottom: 0,
      child: Padding(
        padding: const EdgeInsets.only(right: 20, top: 30, bottom: 120),
        child: Image.asset(
          'assets/img/jdt.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _layerShoe() {
    return Positioned(
      right: -720,
      top: -450,
      child: Container(
        constraints: BoxConstraints(
          maxHeight: 1650,
        ),
        child: Image.asset(
          'assets/img/sepatu_utama.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _layerContent() {
    return Positioned(
      left: 0,
      right: 0,
      top: 0,
      bottom: 0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _layerHeader(),
                _divider(),
                _contentInfo(),
                _divider(),
                _layerFooter(),
              ],
            ),
          ),
          Container(
            width: 450,
          )
        ],
      ),
    );
  }

  Widget _layerFooter() {
    return Padding(
      padding: const EdgeInsets.only(top: 55, left: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _footerItem(
            image: "assets/img/nike_air_one_take.png",
            title: "Nike Air One Take",
            price: "180",
            rating: 4,
          ),
          _footerItem(
            image: "assets/img/nike_air_hurahe.png",
            title: "Nike Air Hurahe",
            price: "160",
            rating: 4,
          ),
          _footerItem(
            image: "assets/img/nike_air_max_270.png",
            title: "Nike Air Max 270",
            price: "213",
            rating: 5,
          ),
          _footerItem(
            image: "assets/img/nike_air_lebron_17.png",
            title: "Nike Air Lebron 17 Low",
            price: "254",
            rating: 5,
          ),
        ],
      ),
    );
  }

  Widget _footerItem({
    String image = "",
    String title = "",
    String price = "",
    int rating = 5,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 35),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFCCCCCC),
              borderRadius: BorderRadius.circular(22),
            ),
            width: 140,
            padding: EdgeInsets.only(
              left: 10,
              right: 5,
              top: 5,
              bottom: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "\$" + price,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                _startRate(rating: rating),
              ],
            ),
          ),
          Positioned(
            child: Image.asset(
              image,
              fit: BoxFit.fill,
              height: 175,
            ),
            top: -100,
            left: -15,
          ),
          Positioned(
            right: -10,
            bottom: -5,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _startRate({
    int rating = 5,
  }) {
    List<Widget> output = [];

    for (var i = 1; i <= 5; i++) {
      if (rating >= i) {
        output.add(
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Icon(
              Icons.star_rate,
              color: Colors.black,
              size: 10,
            ),
          ),
        );
      } else {
        output.add(
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Icon(
              Icons.star_rate,
              color: Colors.black.withOpacity(0.5),
              size: 10,
            ),
          ),
        );
      }
    }

    return Row(
      children: [
        SizedBox(
          width: 5,
        ),
        ...output
      ],
    );
  }

  Widget _contentInfo() {
    return Padding(
      padding: EdgeInsets.only(
        top: 50,
        left: 90,
        bottom: 50,
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 5,
                bottom: 30,
              ),
              child: Text(
                "Nike Air Max",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w900,
                  fontSize: 74,
                  height: 0.8,
                ),
              ),
            ),
            Text(
              "Lebagh",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w300,
                fontSize: 90,
                color: Color(0xFFF27744),
                height: 0.8,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 7,
                top: 50,
              ),
              child: Text(
                "Celebrating The  Hope Classic In Original Form A First${'\n'}Introduced during  UNDERCOVER’s Autumn/Winner 2021${'\n'}Presentation. Genuine Block Leather Takes Over The${'\n'}Upper While A Smooth Leather Smooth Accents The${'\n'}Texture And Collor Bring A Decodes-old Classic Look",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 7,
                top: 25,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "\$190",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w300,
                      fontSize: 44,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(5, 4),
                          spreadRadius: 0,
                          blurRadius: 22,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      "Add To Cart",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _divider() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      height: 5,
    );
  }

  Widget _layerHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 80, bottom: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: SvgPicture.asset(
              "assets/svg/nike.svg",
              height: 50,
            ),
          ),
          _menuItem(title: "MEN"),
          _menuItem(title: "WOMEN"),
          _menuItem(title: "SALE"),
          _menuItem(title: "SNEAKERS"),
        ],
      ),
    );
  }

  Widget _menuItem({String title = ""}) {
    return Text(
      title,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w800,
        fontSize: 14,
      ),
    );
  }
}
