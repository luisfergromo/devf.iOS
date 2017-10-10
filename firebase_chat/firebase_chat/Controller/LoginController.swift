//
//  LoginController.swift
//  firebase_chat
//
//  Created by Luis Romo on 08/10/17.
//  Copyright © 2017 DevF. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    let inputsContainerView:UIView={
        let view = UIView()
        view.backgroundColor=UIColor.white
        view.translatesAutoresizingMaskIntoConstraints=false
        return view
    }()
    //Block code
    let loginRegisterButton: UIButton={
        let button = UIButton(type: .system) //https://developer.apple.com/documentation/uikit/uibuttontype
        button.backgroundColor = UIColor(r:80,g:101,b:161)
        button.setTitle("Registro", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor(r: 56, g: 171, b: 237)
        view.addSubview(inputsContainerView)
        view.addSubview(loginRegisterButton)
        setupInputsContainerView()
        setupRegisterButton()
    }

    func setupInputsContainerView() {
        //x,y,height,widht
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive=true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive=true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 150).isActive=true
    }
    func setupRegisterButton() {
        //x,y,height,widht
        loginRegisterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        loginRegisterButton.centerYAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: 12)
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
        /// https://stackoverflow.com/questions/38862208/preferredstatusbarstyle-removed-in-swift-3
    }
}

extension UIColor{
    convenience init(r: CGFloat,g:CGFloat,b:CGFloat) {
        self.init(red: r/255,green: g/255,blue: b/255, alpha: 1)
    }
}
