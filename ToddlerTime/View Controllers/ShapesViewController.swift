//
//  ShapesViewController.swift
//  ToddlerTime
//
//  Created by Banana Viking on 4/30/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit
import AVFoundation

class ShapesViewController: UIViewController {
    
    @IBAction func touchCircle(_ sender: UIButton) {
        flipCard(withEmoji: "🔵", on: sender)
    }
    
    @IBAction func touchOval(_ sender: UIButton) {
        flipCard(withEmoji: "⬛️", on: sender)
    }
    
    @IBAction func touchRectangle(_ sender: UIButton) {
        flipCard(withEmoji: "🔺", on: sender)
    }
    
    @IBAction func touchTriangle(_ sender: UIButton) {
        flipCard(withEmoji: "🔶", on: sender)
    }
   
    @IBAction func touchOctagon(_ sender: UIButton) {
        flipCard(withEmoji: "⭐️", on: sender)
    }
    
    @IBAction func touchStar(_ sender: UIButton) {
        flipCard(withEmoji: "♥️", on: sender)
    }
    
    var player: AVAudioPlayer?
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            playSound(forObject: "card")
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.003921568627, green: 0.2235294118, blue: 0.368627451, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            if emoji == "🍎" {
                playSound(forObject: "apple")
            }
            if emoji == "🍌" {
                playSound(forObject: "banana")
            }
            if emoji == "🍓" {
                playSound(forObject: "strawberry")
            }
            if emoji == "🍊" {
                playSound(forObject: "orange")
            }
            if emoji == "🍇" {
                playSound(forObject: "grapes")
            }
            if emoji == "🌶" {
                playSound(forObject: "pepper")
            }
            if emoji == "🥦" {
                playSound(forObject: "broccoli")
            }
            if emoji == "🥕" {
                playSound(forObject: "carrot")
            }
            if emoji == "🌽" {
                playSound(forObject: "corn")
            }
        }
    }
    
    func playSound(forObject: String) {
        guard let url = Bundle.main.url(forResource: forObject, withExtension: "wav") else {
            print("url not found")
            return
        }
        
        do {
            /// this codes for making this app ready to takeover the device audio
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            
            player!.play()
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
    }
}
