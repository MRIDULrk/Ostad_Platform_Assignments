void main() {
  List<dynamic> apple = ['Apple', 'Red', 2.5];
  List<dynamic> mango = ['Mango', 'yellow', 9.5];
  List<dynamic> grasp = ['Grasp', 'purple', 10.5];
  Map<int, dynamic> fruitlist= {
    1: apple,
    2: mango,
    3: grasp
  };

  display(fruitlist);
  discountPrice(fruitlist,50);

}

void display(Map<int,dynamic> fruits){

  for(int i=1;i<=fruits.keys.length;i++) {

    dynamic value = fruits[i];
    String name = value[0];
    String color = value[1];
    double price = value[2];

    print('Fruits Name: '+name +', Colour:'+color +', Price:'+price.toString());

  }

}

void discountPrice(Map<int,dynamic> fruits,int discountRate){


  print('After '+discountRate.toString()+'% Discount The Details is:');

  for(int i=1;i<=fruits.keys.length;i++) {

    dynamic value = fruits[i];
    String name = value[0];
    String color = value[1];
    double price = value[2]*(discountRate/100);

    print('Fruits Name: '+name +', Colour:'+color +', Price:'+price.toString());

  }
}
