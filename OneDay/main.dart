void main() {
  print("你好啊");
  String data = "aoeiuebpmfdtn";
  getData(data);
  
}

getData(String data) async {
 print(data);
 data = await Future.delayed(Duration(seconds: 5),() {
   return "1234";
 });
 print(data);
}