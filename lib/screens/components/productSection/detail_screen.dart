import 'package:flutter/material.dart';
import 'package:shopping_cart_app/constants.dart';
import 'package:shopping_cart_app/model/product_model.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  // ignore: library_private_types_in_public_api
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              )),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    widget.product.images[selectedImage],
                    height: 300,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.title,
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Montserrat"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Choice of variants",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                            fontFamily: "Montserrat"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          widget.product.images.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: previewImages(index),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Available colors",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                            fontFamily: "Montserrat"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: List.generate(
                          widget.product.colors.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: colorList(index),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  height: 60,
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Text(
                        "Add to cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      Text(
                        "\$${widget.product.price}",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container colorList(int index) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
          color: widget.product.colors[index],
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black54, width: 2.0)),
    );
  }

  GestureDetector previewImages(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: PhysicalModel(
        color: Colors.white,
        elevation: 8,
        borderRadius: BorderRadius.circular(15.0),
        shadowColor: kPrimaryColor.withOpacity(0.7),
        child: Container(
            padding: const EdgeInsets.all(10.0),
            width: 80,
            height: 80,
            child: Image.asset(widget.product.images[index])),
      ),
    );
  }
}
