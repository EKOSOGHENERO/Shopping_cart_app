// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_cart_app/model/product_model.dart';
import 'package:shopping_cart_app/screens/components/productSection/detail_screen.dart';

//import 'components/banner.dart';
import 'components/bar_section.dart';
import 'components/productSection/product_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: Text(
          'Electronics Shop',
          style: TextStyle(
            color: Colors.orange.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.shopping_cart_checkout_outlined,
            size: 20,
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            BarSection(),
            SizedBox(
              height: 25,
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Picks",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.space_dashboard_outlined,
                          color: Colors.black54,
                          size: 25,
                        ))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: furProducts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) => ProductSection(
                    product: furProducts[index],
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailScreen(product: furProducts[index])));
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      )),
    );
  }
}
