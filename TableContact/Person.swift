//
//  Person.swift
//  TableContact
//
//  Created by Семен Шевчик on 26.10.2023.
//

import Foundation

struct Person {
    let name: String
    let phone: String
    let email: String
}

class DataStore {
    static let names: [String] = [
        "John Smith",
        "Emily Johnson",
        "Michael Brown",
        "Sarah Davis",
        "David Wilson",
        "Jennifer Martinez",
        "Robert Taylor",
        "Jessica Clark",
        "William Anderson",
        "Mary Rodriguez"
    ]
    
    static let phones: [String] = [
        "574938576",
        "340596859",
        "345435679",
        "543440596",
        "109854968",
        "123435674",
        "435500098",
        "112342345",
        "125039985",
        "450235353"
    ]
    
    static let emails: [String] = [
        "123@gmail.com",
        "456@hotmail.com",
        "789@yahoo.com",
        "222@outlook.com",
        "33@gmail.com",
        "888@yahoo.com",
        "555@hotmail.com",
        "777@gmail.com",
        "4467@outlook.com",
        "7654@yahoo.com"
    ]
}


extension DataStore {
    
    
    static func getRandomPerson() -> [Person] {
        
        var persons: [Person] = []
        
        let shuffledNames = names.shuffled()
        let shuffledPhones = phones.shuffled()
        let shuffledEmails = emails.shuffled()
        
        for i in 0..<shuffledNames.count {
            let name = shuffledNames[i]
            let phone = shuffledPhones[i]
            let email = shuffledEmails[i]
            
            persons.append(Person(name: name, phone: phone, email: email))
        }
        
        return persons
    }
    
}






