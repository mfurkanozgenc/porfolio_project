import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/base/base_state.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController with BaseState {
  void openSocialMedia({required String address, required bool isPhone}) async {
    Uri url;
    if (isPhone) {
      print('cccc');
      url = Uri.parse('tel:$address');
    } else {
      url = Uri.parse(address);
    }

    if (!await launchUrl(url)) {
      throw 'Link Bulunamadı $url';
    }
  }

  void openDetailModal(BuildContext context) {
    showModalBottomSheet(
      shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(200))),
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
              color: constants.colors.generalColor,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20))),
          height: Get.height * .4,
          width: Get.width * .8,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Ben Kimim ?',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.justify,
                        '25 Mart 1999 tarihinde İstanbul/Fatih semtinde dünyaya geldim.Aslen Trabzonluyum doğma büyüme İstanbul.2022 yılında Karadeniz Teknik Üniversitesi Yazılım Mühendiliği bölümünden mezunum.Çeşitli yerlerde yaptığım stajlardan sonra şu an aktif olarak NarPOS Otomasyon şirketinde yazılım mühendisi olarak 3.yılıma doğru ilerlemekteyim...'),
                  ),
                  RichText(
                    text: const TextSpan(
                        text: 'Doğum Tarihi : ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: '25.04.1999',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold))
                        ]),
                  ),
                  RichText(
                    text: const TextSpan(
                        text: 'Ehliyet Sınıfı : ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: 'B1',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold))
                        ]),
                  ),
                  RichText(
                    text: const TextSpan(
                        text: 'Askerlik Tecil : ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: '31.12.2025',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold))
                        ]),
                  ),
                  const Column(
                    children: [
                      Text('Hobiler ;',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text(
                        '-> Kod yazmak',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '-> Kitap Okumak',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '-> Yeni şeyler üretmek ve öğrenmek',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
