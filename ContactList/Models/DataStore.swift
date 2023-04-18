//
//  DataStore.swift
//  ContactList
//
//  Created by Alex on 18.04.2023.
//

import Foundation

final class DataStore {
    let names: [String] = ["Ivan", "Evgeny", "Misha", "Sergey", "Petr", "Alex"]
    let surnames: [String] = ["Apple", "Potato", "Cucumber", "Cherry", "Melon", "Tomato"]
    let phoneNumbers: [String] = ["111", "222", "333", "444", "555", "666"]
    let emails: [String] = ["Apple@g.com", "Potato@g.com", "Cucumber@g.com", "Cherry@g.com", "Melon@g.com", "Tomato@g.com"]
    
    private func getRandomPerson() -> [Person] {
        var uniquePersons: [Person] = []
        
        for _ in 0..<names.count {
            let name = names.randomElement() ?? ""
            let surname = surnames.randomElement() ?? ""
            let phoneNumber = phoneNumbers.randomElement() ?? ""
            let email = emails.randomElement() ?? ""
            
            let person = Person(name: name, surname: surname, phoneNumber: phoneNumber, email: email)
            uniquePersons.append(person)
        }
        
        return uniquePersons
    }
    
}
