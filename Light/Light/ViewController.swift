//
//  ViewController.swift
//  Light
//
//  Created by offochka on 03.10.2018.
//  Copyright © 2018 Offochka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightBlack = true
    var lightGreen = true
    var lightBlue = true
    var lightYellow = true
    var lightRed = true
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        if lightBlack == true {
            lightBlack = false
            lightGreen = true
        } else if lightGreen == true {
            lightGreen = false
            lightBlue = true
        } else if lightBlue == true {
            lightBlue = false
            lightYellow = true
        } else if lightYellow == true {
            lightYellow = false
            lightRed = true
        } else if lightRed == true {
            lightRed = false
            lightBlack = true
        } else {
            lightBlack = true
        }
        
        updateUi()
    }
    func updateUi() {
        if lightBlack {
            view.backgroundColor = .black
        } else if lightGreen {
            view.backgroundColor = .green
        }else if lightBlue {
            view.backgroundColor = .blue
        } else if lightYellow {
            view.backgroundColor = .yellow
        } else if lightRed{
            view.backgroundColor = .red
        } else {
            view.backgroundColor = .black
        }
    }
            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUi()
    }


}


