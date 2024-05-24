import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      /*
        title : text ou une icone ou une image 
        centerTitile : centrer le titre  
        leading : regroupement de widget à gauche de la barre de navigation 
        actions : regroupement de widget à gauche de la barre de navigation 
      */
      title: const Text(
        'Store',
        style: TextStyle(
          color: Color.fromARGB(255, 17, 76, 240),
          fontSize: 25,
          fontFamily: 'police_1',
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            /*
            débogage : 
            print : affichage de données simpltes 
            inspect : affichage de donénes complexes
          */
            print('on pressed');
          },
          icon: const Icon(Icons.person),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_checkout_sharp),
        ),
      ],
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
