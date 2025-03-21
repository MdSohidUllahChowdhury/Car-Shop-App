import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils {
  static listSearchInfo() {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(24)),
      child: ListTile(
        onTap: () {},
        contentPadding: const EdgeInsets.all(8),
        leading: const Icon(
          Icons.search,
          size: 25,
        ),
        title: const Text(
          'S e a r c h',
        ),
        trailing: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.lightBlueAccent.shade400,
            child: const Icon(
              Icons.equalizer_rounded,
              size: 25,
              color: Colors.white,
            )),
      ),
    );
  }

  static carLogoImagePath(imagepath) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.black,
      child: InkWell(
        onTap: () {},
        child: Image.asset(imagepath),
      ),
    );
  }

  static populerViewAll() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          'Populer',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Bold',
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1.4,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            'View All',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w900,
              color: Colors.grey,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ],
    );
  }

  static priceAndReating(price, reating) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          price,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w700,
            color: Colors.black,
            letterSpacing: 1.2,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              const Icon(
                Icons.star,
                size: 15,
                color: Colors.amber,
              ),
              const SizedBox(width: 5),
              Text(
                reating,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  static appbarCustom(
    String barName,
    
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey.shade700,
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
          ),
          Text(
            barName,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'Bold',
              color: Colors.white,
              letterSpacing: 1.4,
            ),
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey.shade700,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }

  static carNameAndReating(carname, reating) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          carname,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'Bold',
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1.2,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              const Icon(
                Icons.star,
                size: 17,
                color: Colors.amber,
              ),
              const SizedBox(width: 5),
              Text(
                reating,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
