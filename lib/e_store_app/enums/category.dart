enum Category {
  cloting(description: "men's clothing"),
  jewelery(description: "jewelery"),
  electronics(description: "electronics");

  final String description;

  const Category({required this.description});
}
