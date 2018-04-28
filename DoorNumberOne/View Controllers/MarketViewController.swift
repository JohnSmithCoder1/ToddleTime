//
//  MarketViewController.swift
//  DoorNumberOne
//
//  Created by Banana Viking on 4/27/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit
import AVFoundation

class MarketViewController: UIViewController {
    
    @IBAction func touchApple(_ sender: UIButton) {
        flipCard(withEmoji: "🍎", on: sender)
    }
    
    @IBAction func touchBanana(_ sender: UIButton) {
        flipCard(withEmoji: "🍌", on: sender)
    }
    
    
    @IBAction func touchStrawberry(_ sender: UIButton) {
        flipCard(withEmoji: "🍓", on: sender)
    }
    
    @IBAction func touchOrange(_ sender: UIButton) {
        flipCard(withEmoji: "🍊", on: sender)

    }
    
    @IBAction func touchGrapes(_ sender: UIButton) {
        flipCard(withEmoji: "🍇", on: sender)

    }
    
    @IBAction func touchPepper(_ sender: UIButton) {
        flipCard(withEmoji: "🌶", on: sender)

    }
    
    @IBAction func touchBroccoli(_ sender: UIButton) {
        flipCard(withEmoji: "🥦", on: sender)

    }
    
    @IBAction func touchCarrot(_ sender: UIButton) {
        flipCard(withEmoji: "🥕", on: sender)

    }
    
    @IBAction func touchCorn(_ sender: UIButton) {
        flipCard(withEmoji: "🌽", on: sender)

    }
    
    var player: AVAudioPlayer?
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            playDoorClose()
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.4941176471, green: 0.4078431373, blue: 0.3529411765, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            if emoji == "🍎" {
                playAppleSound()
            }
            if emoji == "🍌" {
//                playBananaSound()
            }
            if emoji == "🍓" {
//                playStrawberrySound()
            }
            if emoji == "🍊" {
//                playOrangeSound()
            }
            if emoji == "🍇" {
//                playGrapesSound()
            }
            if emoji == "🌶" {
//                playPepperSound()
            }
            if emoji == "🥦" {
//                playBroccoliSound()
            }
            if emoji == "🥕" {
//                playCarrotSound()
            }
            if emoji == "🌽" {
//                playCornSound()
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
        guard let url = Bundle.main.url(forResource: "apple", withExtension: "wav") else {
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
    
    func playBananaSound() {
        guard let url = Bundle.main.url(forResource: "banana", withExtension: "wav") else {
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
    
    func playStrawberrySound() {
        guard let url = Bundle.main.url(forResource: "strawberry", withExtension: "wav") else {
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
    
    func playOrangeSound() {
        guard let url = Bundle.main.url(forResource: "orange", withExtension: "wav") else {
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
    
    func playGrapesSound() {
        guard let url = Bundle.main.url(forResource: "grapes", withExtension: "wav") else {
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
    
    func playPepperSound() {
        guard let url = Bundle.main.url(forResource: "pepper", withExtension: "wav") else {
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
    
    func playBroccoliSound() {
        guard let url = Bundle.main.url(forResource: "broccoli", withExtension: "wav") else {
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
    
    func playCarrotSound() {
        guard let url = Bundle.main.url(forResource: "carrot", withExtension: "wav") else {
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
    
    func playCornSound() {
        guard let url = Bundle.main.url(forResource: "corn", withExtension: "wav") else {
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
