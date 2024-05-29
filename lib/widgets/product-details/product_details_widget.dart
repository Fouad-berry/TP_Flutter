import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/models/product.dart';
import 'package:store/providers/cart_provider.dart';
import 'package:store/providers/product_provider.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Product? product = context.watch<ProductProvider>().product;

    void _showSnackbar(BuildContext context) {
      final snackBar = SnackBar(
        content: Text('${product!.title} a été ajouté au panier!'),
        duration: const Duration(seconds: 2),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    return Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(product!.image)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          product.title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          product.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          product.price.toStringAsFixed(2),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<CartProvider>(context, listen: false)
                .addToCart(product);
            _showSnackbar(context);
          },
          child: const Text('Add to Cart'),
        ),
      ],
    );
  }
}
