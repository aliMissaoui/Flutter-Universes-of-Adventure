import 'package:flutter/material.dart';

Color firstCardColor = Color(0xff003E4F);
Color scardColor = Color(0xffffffff);
Color ecardColor = Color(0xff000000);

List<BoxShadow> shadowListCategories = [
  BoxShadow(color: Color(0xffE0E0E0), blurRadius: 10, offset: Offset(0, 10))
];

List<String> categories = [
  'Featured',
  'Popular',
  'Experiences',
  'All Places',
];
String txt =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui mattis vitae a elementum auctor et, odio. Cum amet ultricies consectetur sed. Nisi, ipsum varius ut elementum gravida. Enim et sit dis viverra diam, varius. \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Dui mattis vitae a elementum auctor et, odio. Cum amet ultricies consectetur sed. Nisi, ipsum varius ut elementum gravida. Enim et sit dis viverra diam, varius.\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui mattis vitae a elementum auctor et, odio. Cum amet ultricies consectetur sed. Nisi, ipsum varius ut elementum gravida. Enim et sit dis viverra diam, varius.';
List<Map> content = [
  {
    'name': 'Magical Univ',
    'desc':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis dignissim pellentesque phasellus ',
    'iconPath': 'assets/images/f1.png',
    'color': Color(0xff2196f3)
  },
  {
    'name': 'Miracles Univ',
    'desc':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis dignissim pellentesque phasellus ',
    'iconPath': 'assets/images/f2.png',
    'color': Color(0xffe91e63)
  },
  {
    'name': 'Craziness Univ',
    'desc':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis dignissim pellentesque phasellus ',
    'iconPath': 'assets/images/f3.png',
    'color': Color(0xffff9800)
  },
  {
    'name': 'Darkness Univ',
    'desc':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis dignissim pellentesque phasellus ',
    'iconPath': 'assets/images/f4.png',
    'color': Color(0xffffeb3b)
  },
  {
    'name': 'Life Univ',
    'desc':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis dignissim pellentesque phasellus ',
    'iconPath': 'assets/images/f1.png',
    'color': Color(0xff2196f3)
  }
];
