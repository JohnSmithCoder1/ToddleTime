//
//  CardBank.swift
//  ToddlerTime
//
//  Created by Banana Viking on 7/31/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit

class CardBank {
    var farmCards = [Card]()
    var marketCards = [Card]()
    var numberCards = [Card]()
    var shapeCards = [Card]()
    
    init() {
        farmCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "cowImage")!, sound: "cowSound"))
        farmCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "dogImage")!, sound: "dogSound"))
        farmCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "chickenImage")!, sound: "chickenSound"))
        farmCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "pigImage")!, sound: "pigSound"))
        farmCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "horseImage")!, sound: "horseSound"))
        farmCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "catImage")!, sound: "catSound"))
        
        marketCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "appleImage")!, sound: "appleSound"))
        marketCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "bananaImage")!, sound: "bananaSound"))
        marketCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "carrotImage")!, sound: "carrotSound"))
        marketCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "broccoliImage")!, sound: "broccoliSound"))
        marketCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "strawberryImage")!, sound: "strawberrySound"))
        marketCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "pepperImage")!, sound: "pepperSound"))
        
        numberCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "oneImage")!, sound: "oneSound"))
        numberCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "twoImage")!, sound: "twoSound"))
        numberCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "threeImage")!, sound: "threeSound"))
        numberCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "fourImage")!, sound: "fourSound"))
        numberCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "fiveImage")!, sound: "fiveSound"))
        numberCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "sixImage")!, sound: "sixSound"))
        
        shapeCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "circleImage")!, sound: "circleSound"))
        shapeCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "squareImage")!, sound: "squareSound"))
        shapeCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "triangleImage")!, sound: "triangleSound"))
        shapeCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "diamondImage")!, sound: "diamondSound"))
        shapeCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "starImage")!, sound: "starSound"))
        shapeCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "heartImage")!, sound: "heartSound"))
    }
}
