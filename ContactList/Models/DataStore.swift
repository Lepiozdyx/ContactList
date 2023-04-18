//
//  DataStore.swift
//  ContactList
//
//  Created by Alex on 18.04.2023.
//

final class DataStore {
    let names: [String] = ["Gandalf", "Aragorn", "Legolas", "Gimli", "Frodo", "Sam"]
    let surnames: [String] = ["Grey", "Elessar", "Greenleaf", "Dwarf", "Baggins", "Gamgee"]
    let phoneNumbers: [String] = ["1-11", "2-22", "3-33", "4-44", "5-55", "6-66"]
    let emails: [String] = [
        "valinor@gmail.com",
        "numenor@gmail.com",
        "woodland@gmail.com",
        "erebor@gmail.com",
        "shire@gmail.com",
        "shire_hobbiton@gmail.com",
    ]
    
    func getRandomPersons() -> [Person] {
        var uniquePersons: [Person] = []
        
        let names = names.shuffled()
        let surnames = surnames.shuffled()
        let phoneNumbers = phoneNumbers.shuffled()
        let emails = emails.shuffled()
        
        for element in 0..<names.count {
            let person = Person(
                name: names[element],
                surname: surnames[element],
                phoneNumber: phoneNumbers[element],
                email: emails[element]
            )
            uniquePersons.append(person)
        }
        
        return uniquePersons
    }
    
}
