// M3A1: write these three functions with the instructor during the demo.
void main() {
  Map<String, String> contactBook = {};
  addContact(contactBook, ("Sabina"), "09190073104");
  addContact(contactBook, ("Ryza"), "09691364567");
  addContact(contactBook, ("Chel"), "09567835809");
  addContact(contactBook, ("Mama"), "09399281905");

  print(lookup(contactBook, "Sabina"));
  print(lookup(contactBook, "Khel"));

  contactBook.forEach((name, phone) => print("$name: $phone"));
}

void addContact(Map<String, String> book, String name, String phone) {
  book[name] = phone;
}

String lookup(Map<String, String> book, String name) {
  String? number = book[name];
  return number ?? "Not found";
}

List<String> namesStartingWith(Map<String, String> book, String letter) {
  List<String> matchingNames = [];
  String target = letter.toUpperCase();

  for (String name in book.keys) {
    if (name.toUpperCase().startsWith(target)) {
      matchingNames.add(name);
    }
  }
  matchingNames.sort();
  return matchingNames;
}
/// Stores [phone] under [name]. Adding the same name again replaces the number.



/// Returns the number saved for [name], or "Not found" when there is none.




/// Returns the names that start with [letter], ignoring capital letters, sorted A to Z.


// The contact directory program. Type along with the instructor.
// Run it with: dart run lib/directory.dart
