void sayHello() {
  print("Hello!");
}

void sayGoodbye() {
  print("Goodbye!");
}

void executeFunction(Function func) {
  func(); // Memanggil fungsi yang diterima sebagai argumen.
}

void main() {
  Function myFunction = sayHello; // Fungsi sayHello disimpan dalam variabel myFunction.
  myFunction(); // Memanggil fungsi yang disimpan dalam variabel.

  executeFunction(sayGoodbye); // Memanggil fungsi sayGoodbye sebagai argumen ke fungsi executeFunction.
}