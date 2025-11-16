String globalVar = 'I am a Global Variable';

String getGlobalVar() => globalVar;

void main() {
  // anonymousFunctionExample();
  // higherOrderFunctionExample();
  // recursiveFunctionExample();
  scopeExample();
}

void anonymousFunctionExample() {
  print('--- Anonymous Function Example ---');

  var greet = (String name) {
    print('Hello, $name!');
  };

  greet('Momshad');

  var numbers = [1, 2, 3];

  numbers.forEach((num) {
    print('Number: $num');
  });
}

void higherOrderFunctionExample() {
  executeTask(printMessage);
}

void executeTask(Function task) {
  task();
}

void printMessage() {
  print('Task executed successfully!');
}

Function greetUser(String greeting) {
  return (String name) => print('$greeting, $name!');
}

void recursiveFunctionExample() {
  print('\n--- Recursive Function Example ---');

  print('Factorial of 5 is ${factorial(5)}');
  print('Fibonacci(6) = ${fibonacci(6)}');
}

int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

int fibonacci(int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void scopeExample() {
  print('\n--- Scope Example ---');

  String localVar = 'I am a Local Variable';

  print(getGlobalVar());
  print(localVar);

  if (true) {
    String blockVar = 'I exist only inside this block';
    print(blockVar);
  }

  String globalVar = 'I shadow the global one!';
  print(globalVar);
}
