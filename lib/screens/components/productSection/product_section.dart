import 'package:flutter/material.dart';
import 'package:new_flutter_app/model/product_model.dart';

import '../../../../constants.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({
    super.key,
    required this.product,
    required this.press,
  });
  final Product product;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
      child: InkWell(
        onTap: press,
        child: PhysicalModel(
          color: Colors.white,
          elevation: 8,
          borderRadius: BorderRadius.circular(15.0),
          shadowColor: kPrimaryColor.withOpacity(0.7),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              children: [
                Image.asset(
                  product.images[0],
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  product.title,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat"),
                ),
                SizedBox(
                  height: 40,
                  width: 50,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: kSecondaryColor,
                      ),
                      Text("${product.rating}")
                    ],
                  ),
                ),
                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: kPrimaryColor,
                      fontFamily: "Montserrat"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
