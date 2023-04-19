//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Alex on 19.04.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    private let persons = Person.getRandomPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers?.forEach { navigationController in
            if let navigationVC = navigationController as? UINavigationController,
               let controller = navigationVC.viewControllers.first {
                if let contactListVC = controller as? ContactListViewController {
                    contactListVC.persons = persons
                } else if let detailListVC = controller as? DetailListViewController {
                    detailListVC.persons = persons
                }
            }
        }
    }

}
