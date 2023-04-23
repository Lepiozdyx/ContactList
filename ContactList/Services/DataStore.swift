//
//  DataStore.swift
//  ContactList
//
//  Created by Alex on 18.04.2023.
//

final class DataStore {
    static let shared = DataStore()
    
    let names = ["Gandalf", "Aragorn", "Legolas", "Gimli", "Frodo", "Sam"]
    let surnames = ["Grey", "Elessar", "Greenleaf", "Dwarf", "Baggins", "Gamgee"]
    let phoneNumbers = ["1-111-11", "2-222-2", "3-333-3", "4-444-4", "5-555-5", "6-666-6"]
    let icons = ["gandalf", "aragorn", "legolas", "gimli", "frodo", "sam"]
    let emails = [
        "valinor@gmail.com",
        "numenor@gmail.com",
        "woodland@gmail.com",
        "erebor@gmail.com",
        "shire@gmail.com",
        "shire_hobbiton@gmail.com",
    ]
    
    private init() {}
}
