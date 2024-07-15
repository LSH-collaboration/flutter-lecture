int global_a = 10;

func() {
  int local_a = 10;
}

class Obj {
  int class_a = 10;

  set(int val) {
    class_a = val;
  }

  int get() {
    return class_a;
  }
}

class View {
  View({required this.obj});
  Obj obj;

  render() {
    print('View var ${obj.get()}');
  }
}

main() {
  print(global_a);
  // print(local_a);  // 접근 불가능

  final obj = Obj();

  View view = View(obj: obj);
  view.render();
  print('Obj var ${obj.get()}');
  obj.set(20);
  print('Obj var ${obj.get()}');
  view.render();
}

//https://chatgpt.com/share/6f443ef3-8564-4ec6-a961-51be0ace337b
