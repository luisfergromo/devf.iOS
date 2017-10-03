//
//  ViewController.swift
//  Test
//
//  Created by Luis Romo on 02/10/17.
//  Copyright © 2017 Luis Romo. All rights reserved.
//

import UIKit
//import Test

class ViewController: UIViewController,AdditionDelegate {

    func addInt(_ num1: Int32, with num2: Int32) -> Int32 {
        return num1+num2
    }

    func addFloat(_ num1: Float, with num2: Float) -> Float {
        return num1+num2
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("\(addInt(12, with: 23))")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

