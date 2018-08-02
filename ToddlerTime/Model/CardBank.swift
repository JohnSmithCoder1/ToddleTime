//
//  CardBank.swift
//  ToddlerTime
//
//  Created by Banana Viking on 7/31/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit
import AVFoundation

class CardBank {
    var cards = [Card]()
    var player: AVAudioPlayer?
    
    func setupCardStyle(view: UIView) {
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 4.5, height: 4.5)
        view.layer.shadowRadius = 4.5
        view.layer.shadowOpacity = 1
    }
    
    func flipCard(withImage image: UIImage, on button: UIButton) {
        if button.currentImage == image {
            playSound(forObject: "flipCardSound")
            button.setImage(nil, for: .normal)
            
            for i in 0...23 {
                if image == UIImage(named: cards[i].image) {
                    button.backgroundColor = cards[i].color
                }
            }
        } else {
            button.setImage(image, for: .normal)
            
            for i in 0...23 {
                if image == UIImage(named: cards[i].image) {
                    playSound(forObject: cards[i].sound)
                }
            }
        }
    }
    
    func playSound(forObject: String) {
        guard let url = Bundle.main.url(forResource: forObject, withExtension: "wav") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
    }
    
    init() {
        cards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: "cowImage", sound: "cowSound"))
        cards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: "dogImage", sound: "dogSound"))
        cards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: "chickenImage", sound: "chickenSound"))
        cards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: "pigImage", sound: "pigSound"))
        cards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: "horseImage", sound: "horseSound"))
        cards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: "catImage", sound: "catSound"))
        
        cards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: "appleImage", sound: "appleSound"))
        cards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: "bananaImage", sound: "bananaSound"))
        cards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: "carrotImage", sound: "carrotSound"))
        cards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: "broccoliImage", sound: "broccoliSound"))
        cards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: "strawberryImage", sound: "strawberrySound"))
        cards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: "pepperImage", sound: "pepperSound"))
        
        cards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: "oneImage", sound: "oneSound"))
        cards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: "twoImage", sound: "twoSound"))
        cards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: "threeImage", sound: "threeSound"))
        cards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: "fourImage", sound: "fourSound"))
        cards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: "fiveImage", sound: "fiveSound"))
        cards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: "sixImage", sound: "sixSound"))
        
        cards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: "circleImage", sound: "circleSound"))
        cards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: "squareImage", sound: "squareSound"))
        cards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: "triangleImage", sound: "triangleSound"))
        cards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: "diamondImage", sound: "diamondSound"))
        cards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: "starImage", sound: "starSound"))
        cards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: "heartImage", sound: "heartSound"))
    }
}
