import 'dart:async';
import 'dart:isolate';

void main() async {
  //useThen();
  //useAsyncAwait();
  //printFunc();
  // loadUser();
  // loadUserThen();
  //multiOperation();
  //userStream();  //A Stream gives MANY values over time.
  //streamController();  //Stream Controller(manual Stream)
  //generatorFunction();  //Async & yield (Generator Functions)*
  //oneTime();
  //repeaatingTime();
  //heavyTaskMain();  //Isolates

  callApi();
  callStream();
}

//Real World Examples
//Download Simulation(Streams)
void callStream() async {
  await for (var p in downloadProgress()) {
    print("progress : $p%");
  }
}

Stream<int> downloadProgress() async* {
  for (int i = 0; i <= 100; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

//Call API Simulator
void callApi() async {
  print("Loading...");
  var user = await getUser();
  print(user);
}

Future<String> getUser() async {
  await Future.delayed(Duration(seconds: 2));
  return "User Afiq Loaded";
}

//Isolates(True Concurrency)
//Dart Normally runs one thread
//To do CPU heavy taskd without freezing the app-> use isolates

//Use : Image Processing , Large loop, Encryption, Parsing large json File

void heavyTaskMain() async {
  var receivePort = ReceivePort();
  await Isolate.spawn(heavyTask, receivePort.sendPort);

  receivePort.listen((message) {
    print("Result : $message");
  });
}

void heavyTask(SendPort sendPort) {
  int sum = 0;
  for (int i = 0; i < 1000000000; i++) {
    sum += i;
  }
  sendPort.send(sum);
}

//Timers (Run Repeatedly or once)
//one time timer
void oneTime() {
  Timer(Duration(seconds: 1), () {
    print("Timer Finised");
  });
}

void repeaatingTime() {
  Timer.periodic(Duration(seconds: 1), (timer) {
    print("Tick");
  });
}

//Async & yield (Generator Functions)*
//use async* to generate values over time
void generatorFunction() async {
  await for (var word in words()) {
    print(word);
  }

  print("");

  words().listen((v) {
    print(v);
  });
}

Stream<String> words() async* {
  yield "Hello";
  await Future.delayed(Duration(seconds: 1));
  yield "world";
}

//Stream Controller(manual Stream)
//Use Chat app, Live Counters, Live location  , Sensor Data
void streamController() {
  var controller = StreamController<int>();

  controller.stream.listen((value) {
    print("received : $value");
  });
  controller.add(1);
  controller.add(1);
  controller.add(1);
  controller.add(1);
  controller.add(1);
  controller.close();
}

//Streams (Asynchrous sequence of value )
//A future gives one value
// Astrime give many value over time // Listining to a stream
void userStream() async {
  await for (var n in numberStream()) {
    print(n);
  }
}

Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

//Multiple Async oprartions Ffuture.wait()

void multiOperation() async {
  var r = await Future.wait([
    Future.delayed(Duration(seconds: 1), () => "Task1"),
    Future.delayed(Duration(seconds: 2), () => "Task1"),
  ]);
  print(r);

  print("");
  var v = await Future.wait([
    Future.delayed(Duration(seconds: 1), () => "Task1"),
    Future.delayed(Duration(seconds: 2), () => "Task2"),
    Future.delayed(Duration(seconds: 3), () => "Task3"),
    Future.delayed(Duration(seconds: 4), () => "Task4"),
  ]);
  print(v);
}

//Future.delayed()
Future<void> waitTask() async {
  print("Start");
  await Future.delayed(Duration(seconds: 2));
  print("2 Seconds Passed");
}

//error Handling in async
//use try/catch with async/await
void loadUserThen() {
  fetchData()
      .then((value) {
        print(value);
      })
      .catchError((e) {
        print("Error : $e");
      });
}

Future<void> loadUser() async {
  try {
    throw "Server Error";
  } catch (e) {
    print("Error : $e");
  }
}

//A Future represents a value that will be available in the future.
//NO async/await yet

void useThen() {
  fetchData().then((value) => print(value));
}

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Data Loaded Then";
  });
}

//Use async when a function contains asynchronous code.
//Use await to pause until a future completes.

void useAsyncAwait() async {
  print("Fetching ...");
  String data = await fetchData1();
  print(data);
  print("Fetching End...");
}

Future<String> fetchData1() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data Loaded";
}

//Rule
//You can only use await inside an async function
//async automatically return a Future
//async function dose not block execution

void printFunc() {
  print("1");
  task();
  print("3");
}

Future<void> task() async {
  print("2");
  await Future.delayed(Duration(seconds: 1));
  print("4");
}
