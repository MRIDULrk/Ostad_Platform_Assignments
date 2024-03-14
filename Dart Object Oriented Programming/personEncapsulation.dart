import'person.dart';

void main()
{

  person randomPerson = person('Mridul','Ranjan','Male',23);
  print('The Name is: '+ randomPerson.getFullName());
  print('The gender is: '+randomPerson.getGender());
  print('The age of this person: '+randomPerson.getAge().toString());
}


