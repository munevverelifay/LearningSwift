//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate() // tekrar tekrar oluşmasını engeller
        titleLabel.text = "How do you like your eggs?"
        let hardness = sender.currentTitle!
        let result = eggTimes[hardness]!
        progressBar.progress = 0.0
        secondsPassed = 0
        totalTime = result
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] (Timer) in
            if secondsPassed < totalTime {
                titleLabel.text = hardness
                self.secondsPassed += 1
                self.progressBar.progress = Float(secondsPassed) / Float(totalTime)
            } else {
                self.timer.invalidate()
                self.titleLabel.text = "DONE"
                playSound()
            }
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
           player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
       }
    
}


