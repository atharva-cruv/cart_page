import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int itemCharge = 375;
  int deliveryFee = 30;
  int tax = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F1F2),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffF4F1F2),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Entypo.chevron_with_circle_left, size: 32),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'THE RAJPUT ROOM',
              style: GoogleFonts.jetBrainsMono(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 18)),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Rambagh Palace',
              style: GoogleFonts.gothicA1(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: 16)),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 14, 14, 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: const Color(0xff4200FF),
                    child: Center(
                      child: Text(
                        '03',
                        style: GoogleFonts.gothicA1(
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 40)),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '03 items',
                        style: GoogleFonts.gothicA1(
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                        'Change',
                        style: GoogleFonts.gothicA1(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.dashed),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  Text(
                    '₹$itemCharge',
                    style: GoogleFonts.gothicA1(),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              indent: 15,
              endIndent: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'DELIVERY FEE',
                        style: GoogleFonts.jetBrainsMono(
                            textStyle: const TextStyle(fontSize: 20)),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          'Rambagh Palace, H-1B, Azkaban Facility for Muggles, 304098',
                          style: GoogleFonts.gothicA1(),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Change',
                        style: GoogleFonts.gothicA1(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.dashed),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '₹$deliveryFee',
                    style: GoogleFonts.gothicA1(),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              indent: 15,
              endIndent: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TAXES AND CHARGES',
                        style: GoogleFonts.jetBrainsMono(
                            textStyle: const TextStyle(fontSize: 20)),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          'Some info about taxes and service charges for transparency',
                          style: GoogleFonts.gothicA1(),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '₹$tax',
                    style: GoogleFonts.gothicA1(),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              indent: 15,
              endIndent: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TO PAY',
                    style: GoogleFonts.jetBrainsMono(
                        textStyle: const TextStyle(fontSize: 20)),
                  ),
                  Text(
                    '₹${itemCharge + deliveryFee + tax}',
                    style: GoogleFonts.gothicA1(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              indent: 15,
              endIndent: 15,
            ),
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'ESTIMATED DELIVERY TIME',
                    style: GoogleFonts.jetBrainsMono(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                  ),
                  Text(
                    '25 Mins',
                    style: GoogleFonts.crimsonPro(
                        fontStyle: FontStyle.italic, fontSize: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        width: 180,
        child: FloatingActionButton(
          backgroundColor:Color(0xff0057FF) ,
          onPressed: () {  },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('PROCEED TO PAY',style: GoogleFonts.jetBrainsMono(textStyle: TextStyle(color: Colors.white)),),
              Icon(FontAwesome.arrow_circle_right,color: Colors.white,)
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}