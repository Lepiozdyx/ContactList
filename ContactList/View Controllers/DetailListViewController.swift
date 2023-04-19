//
//  DetailListViewController.swift
//  ContactList
//
//  Created by Alex on 19.04.2023.
//

import UIKit

final class DetailListViewController: UITableViewController {
    
    var persons: [Person]!
    
    // MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "data", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.section]
        
        if indexPath.row == 0 {
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        } else if indexPath.row == 1 {
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }

        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

}
