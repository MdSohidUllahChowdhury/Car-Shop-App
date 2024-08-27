import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/Controller/utils.dart';
import 'package:music_player/Views/car_main_screen.dart';
import 'package:music_player/Widgets/custom_bottom.dart';
import 'package:music_player/Widgets/profile_details.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Column(
        children: [
          Utils.appbarCustom('Profile'),
          const SizedBox(height:20,),
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('lib/Assets/image/profile.png'),
          ),
          const SizedBox(height:10),
          const Text('Shakil Chowdhury',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Bold',
                        letterSpacing: 1.3,
                      ),
                    ),
          const SizedBox(height:6,),
           
           Container(
            
              padding:const EdgeInsets.symmetric(horizontal:  4),
              height: MediaQuery.of(context).size.height * .64,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                   )
                  ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    Text('Common Functions',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade800,
                        fontFamily: 'Bold',
                        letterSpacing: 1.3,
                      ),
                    ),
                    
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       ProfileDetails(
                        iconNmae: Icons.cable_rounded, 
                        titleName: 'Maintain'),
                       ProfileDetails(
                        iconNmae: Icons.table_bar, 
                        titleName: 'Driving Skill'),
                       ProfileDetails(
                        iconNmae: Icons.military_tech_outlined, 
                        titleName: 'Auto Pass'),
                      ],
                    ),
                    
                    CustomBottom(
                      nameTheBottom:'My Car', 
                      iconName: Icons.car_repair,
                      routName: () => Get.back(),
                       ),
                    CustomBottom(
                        nameTheBottom: 'Social Media Links', 
                        iconName: Icons.share, 
                        routName:() => Get.back(),
                        ),
                    

                    ElevatedButton(
                      onPressed: () {
                        Get.offAll(
                          () => const CarMainScreen(),
                          transition: Transition.leftToRight,
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade800),
                        elevation: MaterialStateProperty.all(0),
                        minimumSize: MaterialStateProperty.all<Size>(
                            const Size(290,60)),
                      ),
                      child: const Text(
                        'Log Out',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.2,
                            fontFamily: 'Bold'),
                      ),
                    )
                  
                  
                  ]
           ),
          )
        ],
      )
    );
  }
}