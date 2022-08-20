//
//  File.swift
//  Personal Information
//
//  Created by Olegio on 20.08.2022.
//

import UIKit

struct Person {
    var name: String?
    var surname: String?
    var email: String?
    var phone: String?
    var image: UIImage?
}

extension Person {
    static func getPersons() -> [Person] {
        var persons = [Person]()
        var currentPerson = Person()
        
        while persons.count < 10 {
            var person = Person(name: names.randomElement(), surname: surnames.randomElement(), email: emails.randomElement(), phone: phones.randomElement())
            person.image = UIImage(named: person.surname!)
            
            if person.name != currentPerson.name && person.surname != currentPerson.surname && person.email != currentPerson.email && person.phone != currentPerson.phone {
                persons.append(person)
                currentPerson = person
            }
        }
        return persons
    }
}
