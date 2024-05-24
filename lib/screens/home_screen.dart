import 'package:flutter/material.dart';
import 'package:store/widgets/common/appbar_widget.dart';
import 'package:store/widgets/common/drawer_widget.dart';
import 'package:store/widgets/home/ads_widget.dart';
import 'package:store/widgets/home/products_grid_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /*
      Scaffold permet l'architecturer l'application 
      body : définir le contenu ppl de l'écran 
      Appbar : barre de navigation 
      Drawer : menu coulissant 
      FloatingButton : bouton flottant ...
    */
    return Scaffold(
      appBar: const AppbarWidget(),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AdsWidget(),
            ProductsGridWidget(),
          ],
        ),
      ),
    );
  }
}
