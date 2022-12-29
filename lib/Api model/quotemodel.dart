class QuoteModel {
  late String text;
  late String author;

  QuoteModel({
    required this.text,
    required this.author,
  });
  factory QuoteModel.fromJson(Map<String, dynamic> json) {
    return QuoteModel(
      text: json['text'] ?? "",
      author: json['author'] ?? "",
    );
  }
}
