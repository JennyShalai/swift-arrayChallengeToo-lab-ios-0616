//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func addNameToDeliLine(name: String) -> String {
        if name == "Billy Crystal" {
            deliLine.insert(name, atIndex: 0)
            return "Welcome Billy! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            deliLine.insert(name, atIndex: 0)
            return "Welcome Meg! You can sit wherever you like."
        } else {
            deliLine.append(name)
            if deliLine.count == 1 {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(deliLine.count) in line."
            }
        }
    }
    
    
    func nowServing() -> String {
        if deliLine.isEmpty {
            return "There is no-one to be served."
        } else {
            return "Now serving \(deliLine.last)!"
        }
    }
    
    
    func deliLineDescription() -> String {
        if deliLine.isEmpty {
            return "The line is currently empty."
        } else {
            var result: String = ""
            for (index, name) in deliLine.enumerate() {
                result = "\(result)\(index). \(name)"
            }
            return "The line is: \(result)"
        }
    }


}

