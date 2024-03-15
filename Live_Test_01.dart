void main() {
  Map<int, String> fruitlist = {

    1: 'Apple',
    2: 'Banana',
    3: 'Grapes'
  };

  print(fruitlist);
  displayFruitDetails(fruitlist);
  applyPriceDiscount(fruitlist,1);

}


void displayFruitDetails(Map<int,String> fruits) {

 if(fruits[1]=='Apple'){

   print('Name: Apple, Color: Red, Price: 2.5');
 }
 if(fruits[2]=='Banana'){

   print('Name: Banana, Color: Yellow, Price: 10');
 }
 if(fruits[3]=='Grapes'){

   print('Name: Grapes, Color: Purple, Price: 2.5');
 }

}


void applyPriceDiscount(Map<int,String> fruits,int discount){

  if(fruits[1]=='Apple'){
    int price1=2.5-discount;

    print('Name: Apple, Color: Red');
    print(price1);
  }
  if(fruits[2]=='Banana'){
    int price2=10-discount;

    print('Name: Banana, Color: Yellow,price:);
        print(price2);
  }
  if(fruits[3]=='Grapes'){
    int price3=10-discount;

    print('Name: Grapes, Color: Purple,);
        print(price3);
  }



}

