// import des packages
// biblio material : biblio de desing google
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/providers/product_provider.dart';
import 'package:store/screens/home_screen.dart';
import 'package:store/services/router_service.dart';

//fonction main : point d'entrée de l'application
void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ProductProvider(),
      ),
    ],
      child: const Store(),
  ),
);

// widget (composant) Store : représente l'application
class Store extends StatelessWidget {
  const Store({super.key});

  //methode build qui permet de définir l'interface visuelle du widget
  /*
    architecture :
      MaterialApp : représente l'application 
        Scaffold : permet d'architecturer l'application

    principeaux widgets :
      - SingleChildScrollView : créer un ascenceur 
      - Row : alignements horizontal de plusieurs widgets 
      - Column : alignements vertical de plusieurs widgets 
      - Text : afficher un texte
      - Icon : afficher une icône
      - Image : afficher une image 
      - OutlinerButton : bouton
      - Container : créer un block (semblable à un block html )
  */

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      title: "Store",
/*       home: HomeScreen(),
 */    
routerConfig:  RouterService.getRouter(),
);
  }
}
