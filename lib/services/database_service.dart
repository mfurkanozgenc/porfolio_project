import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_icons/simple_icons.dart';

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
    Job(name: 'Özgenç İletişim', description: 'Satış', date: '2015-2018'),
    Job(name: 'TeknoPark', description: 'Yazılım Geliştirime', date: '2021'),
    Job(
        name: 'NarPOS Otomasyon',
        description: 'Yazılım Mühendisi',
        date: '2022-'),
  ];

  final List<Contact> contancts = [
    Contact(
        name: 'Telefon',
        icon: FontAwesomeIcons.phone,
        value: '+905359148531',
        isPhone: true),
    Contact(
        name: 'İnstagram',
        icon: SimpleIcons.instagram,
        value:
            'https://www.instagram.com/mfurkanozgenc?igsh=cThzcGFqOWw5a3F5&utm_source=qr',
        isPhone: false),
    Contact(
        name: 'LinkedIn',
        icon: SimpleIcons.linkedin,
        value:
            'https://www.linkedin.com/in/mustafa-furkan-%C3%B6zgen%C3%A7-4908651b4?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app',
        isPhone: false),
    Contact(
        name: 'GitGub',
        icon: SimpleIcons.github,
        value: 'https://github.com/mfurkanozgenc?tab=repositories',
        isPhone: false)
  ];
}

class Job {
  String name;
  String description;
  String date;
  Job({required this.name, required this.description, required this.date});
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
