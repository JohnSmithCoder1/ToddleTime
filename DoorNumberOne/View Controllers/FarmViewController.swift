//
//  ViewController.swift
//  DoorNumberOne
//
//  Created by Banana Viking on 4/12/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit
import AVFoundation

class FarmViewController: UIViewController {
    
    @IBAction func backgroundMusic(_ sender: Any) {
        playBackgroundMusic("backgroundMusicTrim.wav")
    }
    
    @IBAction func stopBackgroundMusic(_ sender: UIButton) {
        backgroundMusicPlayer.stop()
    }
    
    @IBAction func touchElephant(_ sender: UIButton) { //can connect all these buttons to same buttonTapped action
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
        flipCard(withEmoji: "🐓", on: sender)
    }
    
    @IBAction func touchOwl(_ sender: UIButton) {
        flipCard(withEmoji: "🦉", on: sender)
    }
    
    @IBAction func touchSheep(_ sender: UIButton) {
        flipCard(withEmoji: "🐑", on: sender)
    }
    
    var player: AVAudioPlayer?
    
    var backgroundMusicPlayer: AVAudioPlayer!

    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            playDoorClose()
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.4941176471, green: 0.4078431373, blue: 0.3529411765, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

            if emoji == "🐘" {
                playElephantSound()
            }
            if emoji == "🐄" {
                playCowSound()
            }
            if emoji == "🐈" {
                playCatSound()
            }
            if emoji == "🐕" {
                playDogSound()
            }
            if emoji == "🐖" {
                playPigSound()
            }
            if emoji == "🐎" {
                playHorseSound()
            }
            if emoji == "🐓" {
                playRoosterSound()
            }
            if emoji == "🦉" {
                playOwlSound()
            }
            if emoji == "🐑" {
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
    
    func playElephantSound() {
        guard let url = Bundle.main.url(forResource: "elephant", withExtension: "wav") else {
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
    
    func playBackgroundMusic(_ filename: String) {
        let resourceUrl = Bundle.main.url(forResource: filename, withExtension: nil)
        guard let url = resourceUrl else {
            print("Could not find file: \(filename)")
            return
        }
        
        do {
            try backgroundMusicPlayer = AVAudioPlayer(contentsOf: url)
            
            backgroundMusicPlayer.numberOfLoops = -1
            backgroundMusicPlayer.prepareToPlay()
            backgroundMusicPlayer.play()
        } catch {
            print("Could not create audio player!")
            return
        }
    }
  
     //var identifier = ["dog": "🐕", "pig": "🐖", "chick": "🐣", "horse": "🐎", "owl": "🦉", "elephant": "🐘", "cat": "🐈", "cow": "🐄", "sheep": "🐑"]
}


