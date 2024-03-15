void main() {
 List<Map<String, dynamic>> fruits = [
  {'name': 'Apple', 'color': 'Red', 'price': 2.5},
  {'ame': 'Banana', 'color': 'Yellow', 'price': 1.0},
  {'name': 'Grapes', 'color': 'Purple', 'price': 3.0}
 ];
 print('fruit price:');
 FruitDetails(fruits);

 DiscountPrice(fruits, 10.0);
 print('fruit Details after 10% discount: ');
 FruitDetails(fruits);
}

void  FruitDetails(List<Map<String, dynamic>> fruits){
 for (dynamic a in fruits){
  print("name : ${a['name']}, color: ${a['color']}, price: \$${a['price']}");
 }
}
void   DiscountPrice (List<Map<String, dynamic>> fruits, double discount) {
 for (dynamic b in fruits){
  double beforeprice = b['price'];
  double dis_ammount = beforeprice * (discount / 100);
  double afterprice = beforeprice - dis_ammount;
  b['price'] = afterprice;
 }
}