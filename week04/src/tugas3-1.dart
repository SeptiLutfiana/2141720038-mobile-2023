void printPerson(String firstName, String lastName, {int age = 0, String address = ''}) {
  print("Name: $firstName $lastName");
  print("Age: $age");
  print("Address: $address");
}

void main() {
  printPerson("Septi Lutfiana", "Septi", age: 20, address: "Ponorogo");
}