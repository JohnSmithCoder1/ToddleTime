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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground), name: .UIApplicationDidEnterBackground, object: nil)
    }
    
    @objc func appDidEnterBackground() {
        resetNumbersCards()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        playSound(forObject: "page")
        resetNumbersCards()
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            playSound(forObject: "card")
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            if emoji == "1️⃣" {
                playSound(forObject: "one")
            }
            if emoji == "2️⃣" {
                playSound(forObject: "two")
            }
            if emoji == "3️⃣" {
                playSound(forObject: "three")
            }
            if emoji == "4️⃣" {
                playSound(forObject: "four")
            }
            if emoji == "5️⃣" {
                playSound(forObject: "five")
            }
            if emoji == "6️⃣" {
                playSound(forObject: "six")
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
    
    func resetNumbersCards() {
        if let button0 = self.view.viewWithTag(300) as? UIButton {
            button0.setTitle("", for: .normal)
            button0.backgroundColor = #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1)
        }
        if let button1 = self.view.viewWithTag(301) as? UIButton {
            button1.setTitle("", for: .normal)
            button1.backgroundColor = #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1)
        }
        if let button2 = self.view.viewWithTag(302) as? UIButton {
            button2.setTitle("", for: .normal)
            button2.backgroundColor = #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1)
        }
        if let button3 = self.view.viewWithTag(303) as? UIButton {
            button3.setTitle("", for: .normal)
            button3.backgroundColor = #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1)
        }
        if let button4 = self.view.viewWithTag(304) as? UIButton {
            button4.setTitle("", for: .normal)
            button4.backgroundColor = #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1)
        }
        if let button5 = self.view.viewWithTag(305) as? UIButton {
            button5.setTitle("", for: .normal)
            button5.backgroundColor = #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1)
        }
    }
}
