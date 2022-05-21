
import 'package:flutter/material.dart';
import 'package:flutter_application_12/models/models_product.dart';
import 'package:flutter_application_12/size_color/contants.dart';
import 'package:flutter_application_12/widgets/add_to_cart.dart';
import 'package:flutter_application_12/widgets/color_size.dart';
import 'package:flutter_application_12/widgets/counter_with_fav.dart';
import 'package:flutter_application_12/widgets/description.dart';
import 'package:flutter_application_12/widgets/product_title.dart';

class BodyScreen extends StatelessWidget {
  final Product product;
  const BodyScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      const SizedBox(height: kDefaultPaddin / 2),
                      Description(product: product),
                      const SizedBox(height: kDefaultPaddin / 2),
                      const CounterWithFavBtn(),
                      const SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
