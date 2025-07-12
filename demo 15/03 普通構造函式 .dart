class Container {
  int width;
  int height;

 Container({required this.width, required this.height});
}

void main() {
  var c1 = Container(width: 100, height: 100);
  var c2 = Container(width: 100, height: 100);

  print(identical(c1, c2)); // false 不共享存儲空間

}
