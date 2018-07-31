//
//  Card.swift
//  ToddlerTime
//
//  Created by Banana Viking on 7/26/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit

class Card {  // is this class really needed?
    var color: UIColor
    var image: UIImage
    var sound: String
    
    init(color: UIColor, image: UIImage, sound: String) {
        self.color = color
        self.image = image
        self.sound = sound
    }
    
    func resetCards() {
        // add universal card rest func here?
    }
}
