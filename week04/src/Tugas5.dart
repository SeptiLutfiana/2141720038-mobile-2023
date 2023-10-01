void main() {
  var numbers = [1, 2, 3, 4, 5];
  var result = numbers.map((x) => x * 2).toList();
  print(result); // Output: [2, 4, 6, 8, 10]
}