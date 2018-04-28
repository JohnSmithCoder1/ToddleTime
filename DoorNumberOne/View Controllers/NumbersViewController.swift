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
                playAppleSound()
            }
            if emoji == "2️⃣" {
                playCowSound()
            }
            if emoji == "3️⃣" {
                playCatSound()
            }
            if emoji == "4️⃣" {
                playDogSound()
            }
            if emoji == "5️⃣" {
                playPigSound()
            }
            if emoji == "6️⃣" {
                playHorseSound()
            }
            if emoji == "7️⃣" {
                playRoosterSound()
            }
            if emoji == "8️⃣" {
                playOwlSound()
            }
            if emoji == "9️⃣" {
                playSheepSound()
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
    
    func playAppleSound() {
        guard let url = Bundle.main.url(forResource: "Apple", withExtension: "wav") else {
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
    
    func playCowSound() {
        guard let url = Bundle.main.url(forResource: "cow", withExtension: "wav") else {
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
    
    func playCatSound() {
        guard let url = Bundle.main.url(forResource: "cat", withExtension: "wav") else {
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
    
    func playDogSound() {
        guard let url = Bundle.main.url(forResource: "dog", withExtension: "wav") else {
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
    
    func playPigSound() {
        guard let url = Bundle.main.url(forResource: "pig", withExtension: "wav") else {
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
    
    func playHorseSound() {
        guard let url = Bundle.main.url(forResource: "horse", withExtension: "wav") else {
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
    
    func playRoosterSound() {
        guard let url = Bundle.main.url(forResource: "rooster", withExtension: "wav") else {
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
    
    func playOwlSound() {
        guard let url = Bundle.main.url(forResource: "owl", withExtension: "wav") else {
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
    
    func playSheepSound() {
        guard let url = Bundle.main.url(forResource: "sheep", withExtension: "wav") else {
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
