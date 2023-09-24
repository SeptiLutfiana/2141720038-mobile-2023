// Parktikum 2
// langkah 1
void main(){
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  names1.add('Nama Septi Lutfiana');
  names2.add('NIM 2141720038');
  names1.addAll(halogens);
  print(names1);
  print(names2);
}