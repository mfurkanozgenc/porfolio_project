import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:project/base/base_state.dart';
import 'package:project/pages/homePage/home_controller.dart';

class HomeView extends GetView<HomeController> with BaseState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                color: const Color.fromARGB(255, 255, 255, 255),
                elevation: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Mustafa Furkan Özgenç',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Yazılım Mühendisi'.toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: constants.colors.generalColor),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text('Full Stack',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold)),
                          ),
                          const Text('NarPOS Otomasyon',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.person,
                                size: 20,
                              ),
                              TextButton(
                                  onPressed: () =>
                                      controller.openDetailModal(context),
                                  child: Text(
                                    'Detaylı Tanıtım..',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: constants.colors.generalColor),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.folder,
                                size: 20,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PDFModalContent()));
                                  },
                                  child: Text(
                                    'Cv Görüntüle',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: constants.colors.generalColor),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/profil.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: constants.colors.generalColor,
                            width: 5.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Text('Yetenekler'.toUpperCase(),
                    style: TextStyle(
                        color: constants.colors.generalColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemCount: services.databaseService.abilities.length,
                    itemBuilder: (context, index) {
                      var ability = services.databaseService.abilities[index];
                      return Card(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                                width: 2,
                                color: constants.colors.generalColor)),
                        elevation: 15,
                        child: Center(
                            child: Text(
                          ability,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )),
                      );
                    },
                  ),
                ),
                Text('Çalışma Hayatı'.toUpperCase(),
                    style: TextStyle(
                        color: constants.colors.generalColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemCount: services.databaseService.jobs.length,
                    itemBuilder: (context, index) {
                      var job = services.databaseService.jobs[index];
                      return Card(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                                width: 2,
                                color: constants.colors.generalColor)),
                        elevation: 15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              job.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              job.description,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Text('İletişim'.toUpperCase(),
                    style: TextStyle(
                        color: constants.colors.generalColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemCount: services.databaseService.contancts.length,
                    itemBuilder: (context, index) {
                      var contact = services.databaseService.contancts[index];
                      return GestureDetector(
                        onTap: () {
                          controller.openSocialMedia(
                              address: contact.value, isPhone: contact.isPhone);
                        },
                        child: Card(
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: constants.colors.generalColor)),
                          elevation: 15,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(contact.icon),
                              // Padding(
                              //   padding: const EdgeInsets.only(top: 5),
                              //   child: Text(
                              //     contact.name,
                              //     textAlign: TextAlign.left,
                              //     style: const TextStyle(
                              //         color: Colors.black,
                              //         fontSize: 10,
                              //         fontWeight: FontWeight.bold),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PDFModalContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cv'.toUpperCase()),
        centerTitle: true,
        backgroundColor: const Color(0xFFee403c),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Color(0xFFee403c), width: 3),
            ),
            elevation: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: Get.width,
                height: Get.height,
                child: Image.asset(
                  'assets/images/cv.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
