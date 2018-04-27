//
//  MenuViewController.swift
//  DoorNumberOne
//
//  Created by Banana Viking on 4/27/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var farmButton: UIButton!
    @IBOutlet weak var foodsButton: UIButton!
    @IBOutlet weak var numbersButton: UIButton!
    
    override func viewDidLoad() {
        farmButton.layer.cornerRadius = 5
        foodsButton.layer.cornerRadius = 5
        super.viewDidLoad()
    }
}
