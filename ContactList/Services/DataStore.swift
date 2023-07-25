//
//  DataStore.swift
//  ContactList
//
//  Created by Alex on 18.04.2023.
//

final class DataStore {
    static let shared = DataStore()
    
    let names = ["Gandalf", "Aragorn", "Legolas", "Gimli", "Frodo", "Sam", "Meriadoc", "Peregrin", "Saruman"]
    let surnames = ["Grey", "Elessar", "Greenleaf", "son of Gloin", "Baggins", "Gamgee", "Brandybuck", "Took", "White"]
    let phoneNumbers = ["1-111-11", "2-222-2", "3-333-3", "4-444-4", "5-555-5", "6-666-6", "7-777-7", "8-888-8", "9-999-9"]
    let icons = ["gandalf", "aragorn", "legolas", "gimli", "frodo", "sam", "saruman", "merri", "pippin"]
    let emails = [
        "valinor@gmail.com",
        "numenor@gmail.com",
        "woodland@gmail.com",
        "erebor@gmail.com",
        "bywater@gmail.com",
        "hobbiton@gmail.com",
        "tookland@gmail.com",
        "buckland@gmail.com",
        "valinor_1@gmail.com"
    ]
    
    private init() {}
}
