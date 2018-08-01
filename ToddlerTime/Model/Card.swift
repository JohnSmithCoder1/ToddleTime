//
//  Card.swift
//  ToddlerTime
//
//  Created by Banana Viking on 7/26/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit

class Card {
    var color: UIColor
    var image: String
    var sound: String
    
    init(color: UIColor, image: String, sound: String) {
        self.color = color
        self.image = image
        self.sound = sound
    }
}
