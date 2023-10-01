void main(){
  var list = [1, 2, 3];
var list2 = [0, ...list];

var list1 = [1, 2, null];

var list3 = [0, ...list1];

// menambahkan nim
var list4 = [2141720038, ...list];

// langkah 4
// var promoActive = true; //pembenahan dan nilai true
var promoActive = false; //pembenahan dan nilai true
// ignore: dead_code
var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];


// Langkah 5
String login = "Manager";
var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
print(nav2);

// Langkah 6
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);


print(list1);
print(nav);
print(list4);
print(list3.length);
print(list);
print(list2);
print(list2.length);
}