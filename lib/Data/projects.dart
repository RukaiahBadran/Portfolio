import 'package:flutter/material.dart';

class Project {
  final String image;

  final String title;
  final String description;
  final IconData icon;
  final String flutterSvg;
  final String dartSvg;
  final String keyFeatures;
  final String githubLink;
  final String demoVideoLink;
  final String screenshot1;
  final String screenshot2;

  Project({
    required this.image,
    required this.title,
    required this.description,
    required this.icon,
    required this.flutterSvg,
    required this.dartSvg,
    required this.keyFeatures,
    required this.githubLink,
    required this.demoVideoLink,
    required this.screenshot1,
    required this.screenshot2,
  });
}

List<Project> projects = [
  Project(
    image: "assets/ss/findx.jpg",
    title: "FindX",
    description:
        "FindX is a Flutter tool that simplifies Google dorking to locate specific file types online.",
    icon: Icons.search_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/google.svg",
    keyFeatures:
        "• Automates Google Dorking\n• Customizable Searches\n• User-Friendly Interface",
    githubLink: "https://github.com/nakuldevmv/FindX",
    demoVideoLink: "https://findx24.vercel.app/",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),

];
