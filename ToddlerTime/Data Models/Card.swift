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

let cow = Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "cowImage")!, sound: "cowSound")
let dog = Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "dogImage")!, sound: "dogSound")
let chicken = Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "chickenImage")!, sound: "chickenSound")
let pig = Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "pigImage")!, sound: "pigSound")
let horse = Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "horseImage")!, sound: "horseSound")
let cat = Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "catImage")!, sound: "catSound")

let apple = Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "appleImage")!, sound: "appleSound")
let banana = Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "bananaImage")!, sound: "bananaSound")
let carrot = Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "carrotImage")!, sound: "carrotSound")
let broccoli = Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "broccoliImage")!, sound: "broccoliSound")
let strawberry = Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "strawberryImage")!, sound: "strawberrySound")
let pepper = Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "pepperImage")!, sound: "pepperSound")

let one = Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "oneImage")!, sound: "oneSound")
let two = Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "twoImage")!, sound: "twoSound")
let three = Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "threeImage")!, sound: "threeSound")
let four = Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "fourImage")!, sound: "fourSound")
let five = Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "fiveImage")!, sound: "fiveSound")
let six = Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "sixImage")!, sound: "sixSound")

let circle = Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "circleImage")!, sound: "circleSound")
let square = Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "squareImage")!, sound: "squareSound")
let triangle = Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "triangleImage")!, sound: "triangleSound")
let diamond = Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "diamondImage")!, sound: "diamondSound")
let star = Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "starImage")!, sound: "starSound")
let heart = Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "heartImage")!, sound: "heartSound")
