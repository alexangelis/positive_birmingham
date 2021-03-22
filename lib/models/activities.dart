class Activity {
  String imageUrl;
  String name;

  Activity({
    this.imageUrl,
    this.name,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/canals.jpg',
    name: 'Walk around the canals',
  ),
  Activity(
    imageUrl: 'assets/images/bullring.jpg',
    name: 'Shop in the Bullring',
  ),
  Activity(
    imageUrl: 'assets/images/restaurant.jpg',
    name: 'Dive in restaurants',
  ),
  Activity(
    imageUrl: 'assets/images/JQ.jpeg',
    name: 'Scroll around Jewellery Quarter',
  ),
];
