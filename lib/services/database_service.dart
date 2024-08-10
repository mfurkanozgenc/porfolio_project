import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DatabaseService {
  static final _instance = DatabaseService._internal();
  factory DatabaseService() => _instance;
  DatabaseService._internal();

  final String userName = 'Mustafa Furkan Özgenç';

  final List<String> abilities = [
    '.Net',
    'Angular',
    'Dart',
    'Flutter',
    'Sql',
    'Firebase',
    'Html / Css',
    '.Net Mvc'
  ];

  final List<Job> jobs = [
    Job(name: 'Özgenç İletişim', description: 'Satış'),
    Job(name: 'TeknoPark', description: 'Yazılım Geliştirime'),
    Job(name: 'NarPOS Otomasyon', description: 'Yazılım Mühendisi'),
  ];

  final List<Contact> contancts = [
    Contact(
        name: 'Telefon',
        icon: FontAwesomeIcons.phone,
        value: '+905359148531',
        isPhone: true),
    Contact(
        name: '/mfurkanozgenc',
        icon: FontAwesomeIcons.instagram,
        value:
            'https://www.instagram.com/mfurkanozgenc?igsh=cThzcGFqOWw5a3F5&utm_source=qr',
        isPhone: false),
    Contact(
        name: '/mustafafurkanozgenc',
        icon: FontAwesomeIcons.linkedinIn,
        value:
            'https://www.linkedin.com/in/mustafa-furkan-%C3%B6zgen%C3%A7-4908651b4?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app',
        isPhone: false),
  ];
}

class Job {
  String name;
  String description;
  Job({required this.name, required this.description});
}

class Contact {
  String name;
  IconData icon;
  String value;
  bool isPhone;
  Contact(
      {required this.name,
      required this.icon,
      required this.value,
      required this.isPhone});
}
