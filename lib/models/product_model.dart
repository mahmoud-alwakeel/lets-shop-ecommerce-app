class ProductModel {
  final int id;
  final String title;
  final num price;
  final String description;
  final String category;
  final String image;
  final RatingModel? ratingModel;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.ratingModel});

  factory ProductModel.fromJson(map) {
    return ProductModel(
      id: map['id'],
      title: map['title'],
      price: map['price'],
      description: map['description'],
      category: map['category'],
      image: map['image'],
      ratingModel: map['rating'] == null
          ? null
          : RatingModel.fromJson(
              map['rating'],
            ),
    );
  }
}

class RatingModel {
  final dynamic rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(map) {
    return RatingModel(rate: map['rate'], count: map['count']);
  }
}
