import 'package:positive_birmingham/models/architecture.dart';
import 'package:positive_birmingham/models/gallery.dart';

class Building {
  String imageUrl;
  String name;
  String description;
  List<Architecture> architecture;

  Building({
    this.imageUrl,
    this.name,
    this.description,
    this.architecture,
  });
}

List<Architecture> architecture = [
  Architecture(
      date: 'Date built: 2010',
      style:
          'Innovative architecture style designed by Francine Houben, the founding partner of Mecanoo. The design of the library is described as the"People"s Palace", stating that her design was inspired by the energy of this great city.'),
  Architecture(date: 'Date built: 1873', style: '')
];
List<String> imgLibrary = [
  "assets/images/libofbrum2.jpg",
  "assets/images/libofbrum3.jpg",
  "assets/images/libofbrum4.jpg",
];

List<Building> buildings = [
  Building(
    imageUrl: 'assets/images/close-up_library.jpg',
    name: 'The Library',
    description:
        'View the innovative Library of Birmingham with its unique architecture design',
    architecture: architecture,
  ),
  Building(
    imageUrl: 'assets/images/St_Martins-1.jpg',
    name: 'St. Martins',
    description: 'View the beautiful St. Martins cathedral',
    architecture: architecture,
  ),
  Building(
    imageUrl: 'assets/images/grand_central.jpg',
    name: 'Grand Central',
    description: 'Check out what Birmingham is mostly known for',
    architecture: architecture,
  ),
  Building(
    imageUrl: 'assets/images/Highbury_hall.jpg',
    name: 'Highbury Hall',
    description: 'View the Grade II listed building of Highbury Hall',
    architecture: architecture,
  ),
];
