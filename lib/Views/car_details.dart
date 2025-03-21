import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:car_app/Controller/utils.dart';
import 'package:car_app/Views/payment.dart';
import 'package:car_app/Widgets/feature_details.dart';

class CarDetails extends StatelessWidget {
  final String image, brandName, reating, priceCar;

  const CarDetails(
      {super.key,
      required this.image,
      required this.brandName,
      required this.reating,
      required this.priceCar});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Utils.appbarCustom('Car Details'),
            Image.asset(
              image,
              height: 220,
              fit: BoxFit.fitWidth,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    )),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      Utils.carNameAndReating(brandName, reating),
                      const SizedBox(height: 5),
                      Text(
                        '  Features',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade800,
                          fontFamily: 'Bold',
                          letterSpacing: 1.3,
                        ),
                      ),
                      Text(
                        '  esis Moom 3 is an all deckric compact socan.\n  oroduced by les a. inc. it is desioned to... more',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey.shade800,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FeatureDetails(
                            iconNmae: Icons.chair_outlined,
                            titleName: 'Total\nCapacity',
                            descriptionName: '6 Sets',
                          ),
                          FeatureDetails(
                            iconNmae: Icons.speed_sharp,
                            titleName: 'Highest\nSpeed',
                            descriptionName: '200 KM/H',
                          ),
                          FeatureDetails(
                            iconNmae: Icons.energy_savings_leaf_outlined,
                            titleName: 'Engine\nOutput',
                            descriptionName: '500 HP',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            priceCar,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey.shade800,
                              fontFamily: 'Bold',
                              letterSpacing: 1.3,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Get.to(
                                () => const Payment(),
                                transition: Transition.leftToRight,
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.grey.shade800),
                              elevation: WidgetStateProperty.all(0),
                              minimumSize: WidgetStateProperty.all<Size>(
                                  const Size(220, 55)),
                            ),
                            child: const Text(
                              'BUY NOW',
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1.5,
                                  fontFamily: 'Bold'),
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
