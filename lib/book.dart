// Base class: Book
class Book {
  String _title;    // private field
  String _author;   // private field
  int _pages;       // private field

  Book({required String title, required String author, required int pages})
      : _title = title,
        _author = author,
        _pages = pages;

  // Getters
  String get title => _title;
  String get author => _author;
  int get pages => _pages;

  // Setter for pages with validation
  set pages(int value) {
    if (value <= 0) {
      print('Pages must be positive. Keeping previous value $_pages.');
    } else {
      _pages = value;
    }
  }

  // Method 1: read pages
  void read(int number) {
    if (number <= 0) {
      print('Must read at least one page.');
      return;
    }
    if (number > _pages) {
      print('Cannot read more than total pages ($_pages).');
    } else {
      print('Reading $number pages of "$_title" by $_author.');
    }
  }

  // Method 2: summary
  void summary() {
    print('"$_title" by $_author has $_pages pages.');
  }
}