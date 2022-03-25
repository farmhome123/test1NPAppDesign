// จากรูป จงเขียนฟังก์ชันคืนค่าตัวเลขที่เหมือนกันระหว่างสองตัวแปรออกมาเป็นรายการใหม่ โดยตัวเลขที่คืนค่าออกมาในรายการใหม่ต้องไม่ซ้ำกันในตัวเอง ด้วยภาษา Dart *

List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];
List<int> notuniqueA = [];
List<int> notuniqueB = [];
List<int> value = [];
getValue(a, b) {
  var valueA = [];
  var valueB = [];
  for (var i = 0; i < a.length; i++) {
    notuniqueA.add(a[i]);
    if (valueA.indexOf(a[i]) < 0) {
      valueA.add(a[i]);
    } else {
      notuniqueA.removeWhere((item) => item == a[i]);
    }
  }
  for (var j = 0; j < b.length; j++) {
    notuniqueB.add(b[j]);
    if (valueB.indexOf(b[j]) < 0) {
      valueB.add(b[j]);
    } else {
      notuniqueB.removeWhere((item) => item == b[j]);
    }
  }
  print('A ==> ${a}');
  print('notuniqueA ==> ${notuniqueA}');
  print('notuniqueA.length ==> ${notuniqueA.length}');
  print('B ==> ${b}');
  print('notuniqueB ==> ${notuniqueB}');
  print('notuniqueB.length ==> ${notuniqueB.length}');
  for (int i = 0; i < notuniqueA.length; i++) {
    for (int j = 0; j < notuniqueB.length; j++) {
      if (notuniqueA[i] == notuniqueB[j]) {
        // print('aa ${aa}');
        value.add(notuniqueA[i]);
      }
    }
  }
  print('value ==> ${value.length}');
  print('value ==> ${value}');
}

void main() {
  // print(a);
  // print(b);
  getValue(a, b);
}
