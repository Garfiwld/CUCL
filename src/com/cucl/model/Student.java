package com.cucl.model;

	public class Student {
    String Firstname,Lastname,Section,Password,Username;

    public Student(String Username, String Firstname, String Lastname, String Password, String Section) {
        this.Username = Username;
        this.Password = Password;
        this.Firstname = Firstname;
        this.Lastname = Lastname;
        this.Section = Section;
    }
    
    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getFirstname() {
        return Firstname;
    }

    public void setFirstname(String Firstname) {
        this.Firstname = Firstname;
    }

    public String getLastname() {
        return Lastname;
    }

    public void setLastname(String Lastname) {
        this.Lastname = Lastname;
    }

    public String getSection() {
        return Section;
    }

    public void setSection(String Section) {
        this.Section = Section;
    }

}
