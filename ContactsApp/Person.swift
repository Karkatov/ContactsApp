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
    
    static func createArray() -> [Person] {
        
        let names = DataManager.shared.namesArray.shuffled()
        let surnames = DataManager.shared.surnamesArray.shuffled()
        let phones = DataManager.shared.phoneNumbersArray.shuffled()
        let emails = DataManager.shared.emailsArray.shuffled()
        
        var personsArray = [Person]()
        
        for i in 0 ..< names.count {
        
            let person = Person(name: names[i], surname: surnames[i], phoneNumber: phones[i], email: emails[i])
            
            personsArray.append(person)
            
        }
        return personsArray
    }
}

