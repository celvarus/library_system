import 'book.dart';
import 'ebook.dart';
import 'audiobook.dart';

void main() {
  print('--- Base Book Demo ---');
  var book = Book(title: 'Dart Programming', author: 'Alice', pages: 300);
  book.summary();
  book.read(50);
  book.pages = -10; // test setter validation
  print('');

  print('--- EBook Demo ---');
  var ebook = EBook(title: 'Flutter Guide', author: 'Bob', pages: 250, fileSize: 5.5);
  ebook.download();   // unique method
  ebook.summary();    // overridden summary
  ebook.read(30);     // inherited read method
  print('');

  print('--- AudioBook Demo ---');
  var audio = AudioBook(title: 'Learn Dart', author: 'Charlie', pages: 200, duration: 10);
  audio.play();       // unique method
  audio.read(20);     // overridden read method
  audio.summary();    // inherited summary
}