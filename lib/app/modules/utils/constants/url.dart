class URL {
  static String host = "http://localhost:8080";
  static String baseUrl = '$host/api';
  static String loginUrl = '$baseUrl/login';
  static String registerUrl = '$baseUrl/register';
  static String booksUrl = '$baseUrl/books';
  static String popularBooksUrl = '$baseUrl/popular-books';
  static String booksWithCategoryUrl(String categoryId) =>
      '$baseUrl/books?category=$categoryId';
  static String categoriesUrl = '$baseUrl/category';
  static String profileUrl = '$baseUrl/profile';
  static String borrowingUrl = '$baseUrl/borrowing';
  static String returnBookUrl = '$baseUrl/return';
  static String reviewUrl = '$baseUrl/review';
  static String totalFineUrl = '$baseUrl/total-fine';
}
