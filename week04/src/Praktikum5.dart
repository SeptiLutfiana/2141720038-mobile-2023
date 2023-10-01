(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
   var hasilPertukaran = tukar((2, 3));
  print(hasilPertukaran);

  // Record type annotation in a variable declaration:
(String, int) mahasiswa = ('Septi Lutfiana', 2141720038);
print(mahasiswa);


// langkah 5
// var mahasiswa2 = ('first', a: 2, b: true, 'last');
var mahasiswa2 = ('Septi Lutfiana', a: 2141720038, b: true, 'last');


print(mahasiswa2.$1); // Prints 'first'
print(mahasiswa2.a); // Prints 2
print(mahasiswa2.b); // Prints true
print(mahasiswa2.$2); // Prints 'last'
}