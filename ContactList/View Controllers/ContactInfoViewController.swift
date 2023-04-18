//
//  ContactInfoViewController.swift
//  ContactList
//
//  Created by Alex on 18.04.2023.
//

import UIKit

final class ContactInfoViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = contact.fullName
        phoneLabel.text = "Phone: \(contact.phoneNumber)"
        emailLabel.text = "E-mail: \(contact.email)"
    }

}
