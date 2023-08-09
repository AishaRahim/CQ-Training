

void main() 
{ 
  // Task 1: Basic List Operations
  // 1. Create an empty list of integers.
  List<int> int1 = []; 
  print(int1);
  // 2. Use the `add()` method to add numbers 1 to 5 to the list.
  int1.add(1);
  int1.add(2);
  int1.add(3);
  int1.add(4);
  int1.add(5);
  // 3. Print the contents of the list.
  print(int1);
  // 4. Use the `length` property to find the length of the list.
  print(int1.length);
  // 5. Use the `contains()` method to check if the list contains the number 3.
  print(int1.contains(3));
  // 6. Use the `remove()` method to remove the number 2 from the list.
  int1.remove(2);
  // 7. Print the modified list.
  print(int1);

  // Task 2: List Filtering and Mapping
  // 1. Create a list of strings containing names of fruits.
  // 2. Use the `where()` method to filter out fruits that have more than 5 letters.
  // 3. Use the `map()` method to convert the remaining fruit names to uppercase.
  // 4. Print the modified list.
  List<String> fruits = ['apple','orange','pineapple','kiwi'];
  var filterfruits = fruits.where((element) => element.length<=5);
  print(filterfruits.map((e) => e.toUpperCase()));

  // Task 3: List Sorting
  // 1. Create a list of integers in random order.
  // 2. Use the `sort()` method to sort the list in ascending order.
  // 3. Create a copy of the original list and use the `sort()` method with a custom comparison to sort the list in descending order.
  // 4. Print both sorted lists.
  List<int> int2 = [2,7,4,23,8,9];
  int2.sort();
  var int3 = int2;
  print(int2);
  print(int3.reversed);

  // Task 4: List Reducing
  // 1. Create a list of integers.
  // 2. Use the `addAll()` method to add numbers 1 to 10 to the list.
  // 3. Use the `reduce()` method to find the sum of all elements in the list.
  // 4. Print the sum.
  List<int> int4 = [];
  int4.addAll([1,2,3,4,5,6,7,8,9,10]);
  print(int4.reduce((value, element) => value+element));

  // Task 5: List Mapping and Joining
  // 1. Create a list of strings containing sentences.
  // 2. Use the `map()` method to extract the first word from each sentence.
  // 3. Use the `join()` method to concatenate the extracted words into a single string, separated by commas.
  // 4. Print the concatenated string.
  List<String> str = ['this is','a sentence','separated by','by commas'];
  var str1 = str.map((e) => e.split(' '));
  print(str1.map((e) => e.first).join(','));

  // Task 6: List Indexing and Sublist
  // 1. Create a list of integers.
  // 2. Use the `addAll()` method to add numbers 1 to 20 to the list.
  // 3. Use the `elementAt()` method to print the value at index 5.
  // 4. Use the `sublist()` method to extract a sublist containing elements from index 10 to 15.
  // 5. Print the extracted sublist.
  List<int> int5 = [];
  int5.addAll([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]);
  print(int5.elementAt(5));
  var newint = int5.sublist(10,16);
  print(newint);
} 