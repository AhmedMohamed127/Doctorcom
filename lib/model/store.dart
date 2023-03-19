class Store {
  String imageName;
  String itemImage;

  Store.items({
    this.itemImage,
    this.imageName,
  });
}
  // ignore: non_constant_identifier_names
  List<Store> storeItems = [
    Store.items(
      itemImage: "assets/images/vitamin.jpeg",
      imageName: "Supplements & Vitamins",
    ),
    Store.items(
      itemImage: "assets/images/diabets1.jpeg",
      imageName: "Diabetes Care",
    ),
    Store.items(
      itemImage: "assets/images/first aid.jpg",
      imageName: "First Aid",
    ),
    Store.items(
      itemImage: "assets/images/mask.jpeg",
      imageName: "Pandemic Essentials",
    ),
    Store.items(
      itemImage: "assets/images/specialty.jpg",
      imageName: "Specialty Medications",
    ),
    Store.items(
      itemImage:"assets/images/Ant.jpeg",
      imageName: "Antibiotics",
    ),
  ];
