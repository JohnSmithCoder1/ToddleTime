//
//  NumbersViewController.swift
//  DoorNumberOne
//
//  Created by Banana Viking on 4/27/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit
import AVFoundation

class NumbersViewController: UIViewController {
    
    @IBAction func touch1(_ sender: UIButton) {
        flipCard(withEmoji: "1️⃣", on: sender)
    }
    
    @IBAction func touch2(_ sender: UIButton) {
        flipCard(withEmoji: "2️⃣", on: sender)

    }
    
    @IBAction func touch3(_ sender: UIButton) {
        flipCard(withEmoji: "3️⃣", on: sender)

    }
    
    @IBAction func touch4(_ sender: UIButton) {
        flipCard(withEmoji: "4️⃣", on: sender)
    }
    
    @IBAction func touch5(_ sender: UIButton) {
        flipCard(withEmoji: "5️⃣", on: sender)
    }
    
    @IBAction func touch6(_ sender: UIButton) {
        flipCard(withEmoji: "6️⃣", on: sender)
    }
    
    @IBAction func touch7(_ sender: UIButton) {
        flipCard(withEmoji: "7️⃣", on: sender)
    }
    
    @IBAction func touch8(_ sender: UIButton) {
        flipCard(withEmoji: "8️⃣", on: sender)
    }
    
    @IBAction func touch9(_ sender: UIButton) {
        flipCard(withEmoji: "9️⃣", on: sender)
    }
    
    var player: AVAudioPlayer?
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            playDoorClose()
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.4941176471, green: 0.4078431373, blue: 0.3529411765, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.9058823529, green: 0.4431372549, blue: 0.4901960784, alpha: 1)
            if emoji == "1️⃣" {
//                play1Sound()
            }
            if emoji == "2️⃣" {
//                play2Sound()
            }
            if emoji == "3️⃣" {
//                play3Sound()
            }
            if emoji == "4️⃣" {
//                play4Sound()
            }
            if emoji == "5️⃣" {
//                play5Sound()
            }
            if emoji == "6️⃣" {
//                play6Sound()
            }
            if emoji == "7️⃣" {
//                play7Sound()
            }
            if emoji == "8️⃣" {
//                play8Sound()
            }
            if emoji == "9️⃣" {
//                play9Sound()
            }
        }
    }
    
    func playDoorClose() {
        guard let url = Bundle.main.url(forResource: "closeDoor", withExtension: "wav") else {
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
    
    func play1Sound() {
        guard let url = Bundle.main.url(forResource: "1", withExtension: "wav") else {
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
    
    func play2Sound() {
        guard let url = Bundle.main.url(forResource: "2", withExtension: "wav") else {
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
    
    func play3Sound() {
        guard let url = Bundle.main.url(forResource: "3", withExtension: "wav") else {
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
    
    func play4Sound() {
        guard let url = Bundle.main.url(forResource: "4", withExtension: "wav") else {
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
    
    func play5Sound() {
        guard let url = Bundle.main.url(forResource: "5", withExtension: "wav") else {
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
    
    func play6Sound() {
        guard let url = Bundle.main.url(forResource: "6", withExtension: "wav") else {
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
    
    func play7Sound() {
        guard let url = Bundle.main.url(forResource: "7", withExtension: "wav") else {
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
    
    func play8Sound() {
        guard let url = Bundle.main.url(forResource: "8", withExtension: "wav") else {
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
    
    func play9Sound() {
        guard let url = Bundle.main.url(forResource: "9", withExtension: "wav") else {
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
