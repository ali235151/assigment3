q1)

void main() {
  // Create a list of names
  List<String> names = ['Alice', 'Bob', 'Charlie', 'Diana', 'Eve'];

  // Print each name using a loop
  for (String name in names) {
    print(name);
  }
}

q2)

void main() {
  // Create a list of days
  List<String> days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

  // Print only "Sunday"
  for (String day in days) {
    if (day == 'Sunday') {
      print(day);
    }
  }
}

q3)

void main() {
  // Create a list of maps, each representing a student
  List<Map<String, dynamic>> students = [
    {
      'name': 'Alice',
      'class': '10A',
      'rollNo': 101,
      'grade': 'A',
      'percentage': 89.5,
    },
    {
      'name': 'Bob',
      'class': '10B',
      'rollNo': 102,
      'grade': 'B',
      'percentage': 75.0,
    },
     {
      'name': 'Charlie',
      'class': '10A',
      'rollNo': 103,
      'grade': 'A',
      'percentage': 92.3,
    },
    {
      'name': 'Diana',
      'class': '10C',
      'rollNo': 104,
      'grade': 'C',
      'percentage': 68.4,
    },
  ];
  // Print each student's details
  for (var student in students) {
    print('Name: ${student['name']}');
    print('Class: ${student['class']}');
    print('Roll No: ${student['rollNo']}');
    print('Grade: ${student['grade']}');
    print('Percentage: ${student['percentage']}');
    print('--------------------------'); // Separator for readability
  }
}

q4)

void main() {
  // Create a list of numbers
  List<int> numbers = [34, 78, 12, 56, 89, 23, 45];

  // Check if the list is not empty
  if (numbers.isNotEmpty) {
    // Find the smallest number
    int smallest = numbers.reduce((a, b) => a < b ? a : b);

    // Find the greatest number
    int greatest = numbers.reduce((a, b) => a > b ? a : b);

    // Print the results
    print('Smallest number: $smallest');
    print('Greatest number: $greatest');
  } else {
    print('The list is empty.');
  }
}

q5)

int findMaxValue(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('The list is empty and does not contain any elements.');
  }
  
  // Find the maximum value using reduce
  return numbers.reduce((a, b) => a > b ? a : b);
}

void main() {
  // Example list of integers
  List<int> numbers = [34, 78, 12, 56, 89, 23, 45];
  
  try {
    // Get the maximum value from the list
    int maxValue = findMaxValue(numbers);
    // Print the maximum value
    print('The maximum value in the list is: $maxValue');
  } catch (e) {
    print(e);
  }
}

q6)

void main() {
  // Original list of strings
  List<String> originalList = ['apple', 'banana', 'cherry', 'date'];

  // Create a new list with elements in reverse order
  List<String> reversedList = List.from(originalList.reversed);

  // Print the reversed list
  print('Original list: $originalList');
  print('Reversed list: $reversedList');
}

q7)

void printPositiveNumbers(List<int> numbers) {
  // Use where() to filter out negative numbers
  List<int> positiveNumbers = numbers.where((number) => number >= 0).toList();

  // Print the new list with only positive numbers
  print('Original list: $numbers');
  print('Positive numbers: $positiveNumbers');
}

void main() {
  // Example list of integers
  List<int> originalList = [10, -5, 23, -1, 42, -7];

  // Call the function with the original list
  printPositiveNumbers(originalList);
}

q8)

  void main() {
  // Initial list of users
  List<String> usersEligibility = ['John', 'Alice', 'eligible', 'Mike', 'Sarah', 'Tom'];

  // Remove all elements that are equal to 'eligible'
  usersEligibility.removeWhere((user) => user == 'eligible');

  // Print the updated list
  print('Updated list: $usersEligibility');
}