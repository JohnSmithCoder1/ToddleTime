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
    var allCards = [Card]()
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
                if image == allCards[i].image {
                    button.backgroundColor = allCards[i].color
                }
            }
        } else {
            button.setImage(image, for: .normal)
            
            for i in 0...23 {
                if image == allCards[i].image {
                    playSound(forObject: allCards[i].sound)
                }
            }
        }
    }
    
    func playSound(forObject: String) {
        guard let url = Bundle.main.url(forResource: forObject, withExtension: "wav") else {
            print("url not found")
            return
        }
        
        do {
            // prepares app to takeover the device audio
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            
            player?.play()
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
    }
    
    init() {
        allCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "cowImage")!, sound: "cowSound"))
        allCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "dogImage")!, sound: "dogSound"))
        allCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "chickenImage")!, sound: "chickenSound"))
        allCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "pigImage")!, sound: "pigSound"))
        allCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "horseImage")!, sound: "horseSound"))
        allCards.append(Card(color: #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1), image: UIImage(named: "catImage")!, sound: "catSound"))
        
        allCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "appleImage")!, sound: "appleSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "bananaImage")!, sound: "bananaSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "carrotImage")!, sound: "carrotSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "broccoliImage")!, sound: "broccoliSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "strawberryImage")!, sound: "strawberrySound"))
        allCards.append(Card(color: #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1), image: UIImage(named: "pepperImage")!, sound: "pepperSound"))
        
        allCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "oneImage")!, sound: "oneSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "twoImage")!, sound: "twoSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "threeImage")!, sound: "threeSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "fourImage")!, sound: "fourSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "fiveImage")!, sound: "fiveSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1), image: UIImage(named: "sixImage")!, sound: "sixSound"))
        
        allCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "circleImage")!, sound: "circleSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "squareImage")!, sound: "squareSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "triangleImage")!, sound: "triangleSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "diamondImage")!, sound: "diamondSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "starImage")!, sound: "starSound"))
        allCards.append(Card(color: #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1), image: UIImage(named: "heartImage")!, sound: "heartSound"))
    }
}
