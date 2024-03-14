
import 'dart:async';



//Class is a kind of user defined data type
//Class properties can be access by create objects and calling methode


class Student{
    String name ='' ;
    String address='';
    int age=0;
    int id=0;

    static final String institution ='East West University';

    Student(){

      print('This is the default constructor!!!');

    }


    void reading(){

      print('$name is reading.');

    }


    void details(){
      print('This is $name .');
      print('Address is $address .');
      print('id: $id');
      print('Age : $age');
      print('University Name: $institution');
    }

}


void main()
{
      Student st1 = Student();
      st1.name='Mridul';
      st1.address='Dhaka';
      st1.age=23;
      st1.id=01;

      print(st1.name);

      st1.reading();

      st1.details();


      Student st2 = Student();
      st2.name ='Alice';
      st2.reading();
      st2.details(); // Null value will print.


}