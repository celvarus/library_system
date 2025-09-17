import 'book.dart';

class EBook extends Book {
  double fileSize; // in MB

  EBook({required String title, required String author, required int pages, this.fileSize = 1.0})
      : super(title: title, author: author, pages: pages);

  // Unique method
  void download() {
    print('Downloading "$title" of size $fileSize MB...');
  }

  // Override summary
  @override
  void summary() {
    super.summary();
    print('This is an EBook file of size $fileSize MB.');
  }
}