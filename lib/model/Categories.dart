class Category {
  final String name;
  final int numOfCourses;
  final String image;

  Category(this.name, this.numOfCourses, this.image);
}

List<Category> categories = categoriesData
    .map((item) => Category(
    item['name'], item['courses'], item['image']))
    .toList();

var categoriesData = [
  {
    "name": "UI UX Design",
    'courses': 54,
    'image': "ios/assets/images/images/UIUX.png"
  },
  {
    "name": "Finance",
    'courses': 32,
    'image': "ios/assets/images/images/finance.png"
  },
  {
    "name": "Photography",
    'courses': 103,
    'image': "ios/assets/images/images/photo.png"
  },
  {
    "name": "Marketing",
    'courses': 17,
    'image': "ios/assets/images/images/marketig.png"
  },
];
