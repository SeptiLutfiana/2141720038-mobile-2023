void main() {
  int index; // pembenaran
  index = 15;

  // langkah 3
  for (index = 10; index < 27; index++) { // pembenaran 
  if (index == 21) break;
  else if (index > 1 || index < 7) continue;
  print(index);
}
}