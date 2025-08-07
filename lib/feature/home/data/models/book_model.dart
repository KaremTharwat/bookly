class BookModel{
  final String title;
  final String author;
  final String thumbnail;

  BookModel({required this.title, required this.author, required this.thumbnail});
  factory BookModel.fromJson(json)
  {
    return BookModel(title: json["volumeInfo"]["title"], author:json["authors"][0], thumbnail:json["imageLinks"]["thumbnail"]);
  }
}