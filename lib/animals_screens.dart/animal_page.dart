import 'package:flutter/material.dart';
import 'package:vetcare_project/animals_screens.dart/farm_animal_page.dart';
import 'package:vetcare_project/animals_screens.dart/pets_animal_page.dart';
import 'package:vetcare_project/animals_screens.dart/poultry_animal.dart';
import 'package:vetcare_project/widget/custom_animal_page.dart';

class AnimalScreen extends StatelessWidget {
  const AnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            const Image(
              image: AssetImage("assets/images/login.png"),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: CustomAnimal(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const PetsAnimalScreen();
                          }));
                        },
                        image: "assets/images/pets animals.gif",
                        text: "Pets animal"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: CustomAnimal(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const FarmAnimalScreen();
                          }));
                        },
                        image: "assets/images/farm animals.gif",
                        text: "Farm animal"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: CustomAnimal(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const PoultryAnimalScreen();
                          }));
                        },
                        image: "assets/images/poultry.gif",
                        text: "Poultry"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: CustomAnimal(
                        onPressed: () {},
                        image: "assets/images/fish.gif",
                        text: "Fish"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
