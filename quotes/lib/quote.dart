class Quote {
  String text;
  String author;

  Quote(String text, String author) {
    this.text = text;
    this.author = author;
  }
}

// with named parameters,
//there is no need to assign in constructor and you can assign in any order
// Quote myQuote =
//     Quote(text: 'this is the quote text', author: 'this is the author');
