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
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let icons = DataStore.shared.icons.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index],
                icon: icons[index]
            )
            
            uniquePersons.append(person)
        }
        
        return uniquePersons
    }
}
