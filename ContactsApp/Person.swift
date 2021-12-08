//
//  Person.swift
//  ContactsApp
//
//  Created by Duxxless Macbook on 08.12.2021.
//
import UIKit

struct Person {
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    
    init(name: String, surname: String, phoneNumber: String, email: String) {
        self.name = name
        self.surname = surname
        self.phoneNumber = phoneNumber
        self.email = email
    }
    
    func createArray(names: [String], surnames: [String], phones: [String], emails: [String]) -> [Person] {
        
        names.shuffled()
        surnames.shuffled()
        phones.shuffled()
        emails.shuffled()
        
        var personsArray = [Person]()
        
        for i in 0 ..< names.count {
        
            let person = Person(name: names[i], surname: surnames[i], phoneNumber: phones[i], email: emails[i])
            
            personsArray.append(person)
            
        }
        return personsArray
    }
}

var nameArray = ["Sergey", "Alexander", "Maxim", "Alexey"]
var surnameArray = ["Karpov", "Potapov", "Suvorov", "Smirnov"]
var phoneNuberArray = ["899923211", "8999345343", "89213450095", "8905238743"]
 var emailArray = ["robot@ya.ru", "bokoon@gmail.com","popov34@mail.com", "smirmoov99@ya.ru"]

var person = Person(name: "", surname: "", phoneNumber: "", email: "")

let arrayOfPersons = person.createArray(names: nameArray, surnames: surnameArray, phones: phoneNuberArray, emails: emailArray)
