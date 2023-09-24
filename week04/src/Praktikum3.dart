void main(){
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1,
  'name': "Septi Lutfiana",
  'nim' : 2141720038,
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
  'nama' : 'Septi Lutfiana',
  'nim': 2141720038,
};
var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';
gifts['name'] = 'Septi Lutfiana';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
nobleGases['nim'] = 2141720038;

print(gifts);
print(nobleGases);
}