import 'package:car_app/Controller/provider_cart.dart';
import 'package:car_app/Model/iteam_room.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:car_app/Controller/utils.dart';
import 'package:car_app/Views/car_details.dart';
import 'package:provider/provider.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key});

  @override
  Widget build(BuildContext context) {
    
    final productIteam = addOnIteams;
    
    final provider = Provider.of<CarCartProvidder>(context,listen: false);
    
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 3,
          childAspectRatio: .87),
      itemCount: productIteam.length,
      itemBuilder: (context, index) {
        final iteam = productIteam[index];
        return InkWell(
          onTap: () => Get.to(() => CarDetails(
                image: iteam.image,
                brandName: iteam.name,
                reating: iteam.reating,
                priceCar: iteam.price,
              )),
          child: Animate(
            child: Container(
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2,
                        color: Colors.grey.shade400,
                        blurStyle: BlurStyle.outer,
                        offset: const Offset(1, 3)),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () { 
                       Get.snackbar('Added To Cart', 'Favorit item added');
                      provider.addToCart(iteam);
                    },
                    icon: const Icon(Icons.favorite_border_rounded),
                    alignment: Alignment.topLeft,
                  ),
                  Image.asset(
                    iteam.image,
                  ),
                  Center(
                    child: Text(
                      iteam.name,
                      style: const TextStyle(
                          fontFamily: 'Bold', fontSize: 12, color: Colors.black),
                    ),
                  ),
                  Utils.priceAndReating(iteam.price, iteam.reating),
                ],
              ),
            ),
          ).animate().flip().shimmer(
      color: Colors.white, 
      duration: const Duration(seconds: 3)
      ),
        );
      },
    );
  }
}
