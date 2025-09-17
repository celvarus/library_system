import 'book.dart';

class AudioBook extends Book {
  double duration; // in hours

  AudioBook({required String title, required String author, required int pages, this.duration = 1.0})
      : super(title: title, author: author, pages: pages);

  // Unique method
  void play() {
    print('Playing audiobook "$title" for $duration hours.');
  }

  // Override read to indicate listening instead
  @override
  void read(int number) {
    print('Listening to "$title" instead of reading.');
  }
}