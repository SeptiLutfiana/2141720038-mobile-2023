List<int> getValues() {
  int a = 10;
  int b = 20;
  int c = 30;

  return [a, b, c];
}

void main() {
  List<int> values = getValues();
  print(values);
}
