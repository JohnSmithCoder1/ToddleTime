//
//  NumbersViewController.swift
//  ToddlerTime
//
//  Created by Banana Viking on 4/27/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit
import AVFoundation

class NumbersViewController: UIViewController {
    
    @IBAction func touchCard0(_ sender: UIButton) {
        flipCard(withEmoji: "1️⃣", on: sender)
    }
    
    @IBAction func touchCard1(_ sender: UIButton) {
        flipCard(withEmoji: "2️⃣", on: sender)
    }
    
    @IBAction func touchCard2(_ sender: UIButton) {
        flipCard(withEmoji: "3️⃣", on: sender)
    }
    
    @IBAction func touchCard3(_ sender: UIButton) {
        flipCard(withEmoji: "4️⃣", on: sender)
    }
   
    @IBAction func touchCard4(_ sender: UIButton) {
        flipCard(withEmoji: "5️⃣", on: sender)
    }
    
    @IBAction func touchCard5(_ sender: UIButton) {
        flipCard(withEmoji: "6️⃣", on: sender)
    }
  
    var player: AVAudioPlayer?
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            playSound(forObject: "card")
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.568627451, blue: 0.8117647059, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            if emoji == "1️⃣" {
                playSound(forObject: "One")
            }
            if emoji == "2️⃣" {
                playSound(forObject: "Two")
            }
            if emoji == "3️⃣" {
                playSound(forObject: "Three")
            }
            if emoji == "4️⃣" {
                playSound(forObject: "Four")
            }
            if emoji == "5️⃣" {
                playSound(forObject: "Five")
            }
            if emoji == "6️⃣" {
                playSound(forObject: "Six")
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
