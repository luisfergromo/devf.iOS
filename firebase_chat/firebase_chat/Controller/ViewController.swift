//
//  ViewController.swift
//  firebase_chat
//
//  Created by Luis Romo on 08/10/17.
//  Copyright © 2017 DevF. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {//UITable

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout",style: .plain, target:self, action: #selector(handleLogout))
//        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: navigationItem.title.: "Logout",target: .plain, action: UIBarButtonItem(forAction: Selector, withSender: Any?))

    }
    @objc func handleLogout(){
        let loginController = LoginController()
        self.present(loginController , animated: true, completion: nil)
        ////https://stackoverflow.com/questions/24099533/swift-presentviewcontroller
    }
}


