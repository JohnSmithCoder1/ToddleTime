//
//  ViewController.swift
//  DoorNumberOne
//
//  Created by Banana Viking on 4/12/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBAction func touchElephant(_ sender: UIButton) {
        flipCard(withEmoji: "🐘", on: sender)
    }
    
    @IBAction func touchCow(_ sender: UIButton) {
        flipCard(withEmoji: "🐄", on: sender)
    }
    
    @IBAction func touchCat(_ sender: UIButton) {
        flipCard(withEmoji: "🐈", on: sender)
    }
    
    @IBAction func touchDog(_ sender: UIButton) {
        flipCard(withEmoji: "🐕", on: sender)
    }
    
    @IBAction func touchPig(_ sender: UIButton) {
        flipCard(withEmoji: "🐖", on: sender)
    }
    
    @IBAction func touchHorse(_ sender: UIButton) {
        flipCard(withEmoji: "🐎", on: sender)
    }
    
    @IBAction func touchChick(_ sender: UIButton) {
        flipCard(withEmoji: "🐣", on: sender)
    }
    
    @IBAction func touchOwl(_ sender: UIButton) {
        flipCard(withEmoji: "🦉", on: sender)
    }
    
    @IBAction func touchLamb(_ sender: UIButton) {
        flipCard(withEmoji: "🐑", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

    //var player: AVAudioPlayer?
    
    //var identifier = ["dog": "🐕", "pig": "🐖", "chick": "🐣", "horse": "🐎", "owl": "🦉", "elephant": "🐘", "cat": "🐈", "cow": "🐄", "lamb": "🐑"]
    
    //@IBOutlet private var cardButtons: [UIButton]!
    
   

//    func playCardSound() {
//        guard let url = Bundle.main.url(forResource: "cow", withExtension: "wav") else {
//            print("url not found")
//            return
//        }
//
//        do {
//            /// this codes for making this app ready to takeover the device audio
//            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
//            try AVAudioSession.sharedInstance().setActive(true)
//
//            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
//
//            player!.play()
//        } catch let error as NSError {
//            print("error: \(error.localizedDescription)")
//        }
//    }
}

