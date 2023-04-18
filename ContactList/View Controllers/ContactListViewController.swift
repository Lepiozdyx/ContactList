//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Alex on 18.04.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private var persons = Person.getRandomPersons()

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let contact = persons[indexPath.row]
        let infoVC = segue.destination as? ContactInfoViewController
        infoVC?.contact = contact
    }
}

// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    
}
