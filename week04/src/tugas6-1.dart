void main() {
  var closureFn = outer();
  closureFn(); // Output: 10
}

Function outer() {
  var x = 30;

  void inner() {
    print(x);
  }

  return inner;
}