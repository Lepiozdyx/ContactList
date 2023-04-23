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
    
    @IBOutlet var iconView: UIImageView!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = contact.fullName
        iconView.layer.cornerRadius = iconView.frame.height / 2
        phoneLabel.text = "Phone: \(contact.phoneNumber)"
        emailLabel.text = "E-mail: \(contact.email)"
        iconView.image = UIImage(named: contact.icon)
    }

}
