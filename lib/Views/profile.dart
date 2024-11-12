import 'dart:io';

import 'package:car_app/Views/my_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:car_app/Controller/utils.dart';
import 'package:car_app/Views/setting.dart';
import 'package:car_app/Views/welcome_page.dart';
import 'package:car_app/Widgets/custom_bottom.dart';
import 'package:car_app/Widgets/profile_details.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController nameController = TextEditingController();
  String? name;

  File? pickedImage;
  picImage(ImageSource imageSource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageSource);
      if (photo == null) return;
      final accessPhoto = File(photo.path);
      setState(() {
        pickedImage = accessPhoto;
      });
    } catch (e) {
      Get.snackbar(e.toString(), '');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade800,
          body: Column(
            children: [
              Utils.appbarCustom('Profile'),
              const SizedBox(height: 15),
              CircleAvatar(
                radius: 90,
                backgroundImage:
                    pickedImage != null ? FileImage(pickedImage!) : null,
                child: InkWell(
                  onTap: () {
                    Get.bottomSheet(
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: const EdgeInsets.all(16),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Change Profile',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            const Divider(
                              thickness: 4,
                            ),
                            ListTile(
                              onTap: () {
                                picImage(ImageSource.camera);
                              },
                              title: const Text(
                                'Camera',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              leading: const Icon(
                                Icons.camera,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            ListTile(
                              onTap: () {
                                picImage(ImageSource.gallery);
                              },
                              title: const Text(
                                'Gallery',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              leading: const Icon(
                                Icons.photo,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Hi👋 $name',
                    style: const TextStyle(
                        color: Colors.white, fontSize: 22, letterSpacing: 1.2),
                  ),
                  CircleAvatar(
                    radius: 20,
                    child: IconButton(
                        onPressed: () {
                          Get.bottomSheet(Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width * 0.8,
                            margin: const EdgeInsets.all(16),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextField(
                                  controller: nameController,
                                  decoration: const InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    fillColor: Colors.white,
                                    filled: true,
                                    labelText: 'Enter your name',
                                    labelStyle: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                CircleAvatar(
                                  radius:35,
                                  child: IconButton(
                                    onPressed: (){
                                      Get.snackbar('Name Updated','');
                                      Get.back();
                                      setState(() {
                                        name = nameController.text;
                                      });
                                    }, 
                                    icon: const Icon(Icons.done,size: 35,)),
                                )
                              ],
                            ),
                          ));
                        },
                        icon: const Icon(Icons.edit)),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  height: MediaQuery.of(context).size.height * .64,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Common Functions',
                            style: TextStyle(
                              fontSize: 14,
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
                            nameTheBottom: 'My Cart',
                            iconName: Icons.shopping_cart,
                            routName: () => Get.to(() => const MyCart(),
                                transition: Transition.upToDown,
                                duration: const Duration(seconds: 1)),
                          ),
                          CustomBottom(
                            nameTheBottom: 'Setting',
                            iconName: Icons.settings,
                            routName: () => Get.to(() => const Setting()),
                          ),
                          CustomBottom(
                            nameTheBottom: 'Social Media Links',
                            iconName: Icons.share,
                            routName: () => Get.snackbar(
                                'Working on it', 'New feature will come soon'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Get.offAll(
                                () => const WelcomeScreen(),
                                transition: Transition.leftToRight,
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.grey.shade800),
                              elevation: WidgetStateProperty.all(0),
                              minimumSize: WidgetStateProperty.all<Size>(
                                  const Size(190, 60)),
                            ),
                            child: const Text(
                              'Log Out',
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1.2,
                                  fontFamily: 'Bold'),
                            ),
                          )
                        ]),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
