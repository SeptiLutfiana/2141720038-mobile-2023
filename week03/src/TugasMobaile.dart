void main() {
  final nama = "Septi Lutfiana";
  final nim = "2141720038";

  var primeNumbers = <int>[];

  for (var number = 0; number <= 201; number++) {
    if (isPrime(number)) {
      primeNumbers.add(number);
    }
  }

  print("Bilangan prima ditemukan: ${primeNumbers.join(', ')}");
  print("Nama: $nama");
  print("NIM: $nim");
}

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }

  for (var i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}