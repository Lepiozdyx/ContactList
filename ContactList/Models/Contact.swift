//
//  Contact.swift
//  ContactList
//
//  Created by Alex on 18.04.2023.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    let icon: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getRandomPersons() -> [Person] {
        var uniquePersons: [Person] = []
        
        let names = DataStore.names.shuffled()
        let surnames = DataStore.surnames.shuffled()
        let phoneNumbers = DataStore.phoneNumbers.shuffled()
        let emails = DataStore.emails.shuffled()
        let icons = DataStore.icons.shuffled()
        
        for element in 0..<names.count {
            let person = Person(
                name: names[element],
                surname: surnames[element],
                phoneNumber: phoneNumbers[element],
                email: emails[element],
                icon: icons[element]
            )
            uniquePersons.append(person)
        }
        
        return uniquePersons
    }
}
