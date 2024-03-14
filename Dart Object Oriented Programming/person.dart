class person{
    String _firstName='';
    String _lastName='';
    int _age=0;
    String _gender;

    person(this._firstName,this._lastName,this._gender,this._age){

        print(_getBirthYear());

    }

    String getFullName(){

        return _firstName +' '+ _lastName;

    }

    void changeGender(String gender)
    {
        if(gender =='Male'|| gender == 'female'){
            _gender=gender;

        }
        else{
            print('Gender is Invalid');
        }

    }

    void setAge(int age)
    {
        if(age >= 18 && age < 100){

            _age=age;


        }

    }

    String getGender(){

        return _gender;
    }

    int getAge()
    {
        return _age;
    }

    int _getBirthYear()
    {
        return 2024-_age;
    }



}


