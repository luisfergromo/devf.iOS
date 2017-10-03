//
//  File.swift
//  Test
//
//  Created by Luis Romo on 02/10/17.
//  Copyright © 2017 Luis Romo. All rights reserved.
//

import Foundation
public protocol AdditionDelegate : NSObjectProtocol {
    func addInt(_ num1: Int32, with num2: Int32) -> Int32
     func addFloat(_ num1: Float, with num2: Float) -> Float
}
