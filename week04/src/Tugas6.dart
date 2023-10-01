void main() {
  outer();
}

void outer() {
  var x = 10;

  void inner() {
    print(x);
  }

  inner(); // Output: 10
}