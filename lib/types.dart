import 'package:flutter/material.dart';

class Category{
  Category({
    required this.categoryName,
    required this.links,
  });
  final Text categoryName;
  final List<Link> links;
}
class Link{
  Link({
    required this.itemName,
    required this.link,
  });
  final Text itemName;
  final String link;
}