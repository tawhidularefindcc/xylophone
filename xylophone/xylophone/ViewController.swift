//
//  ViewController.swift
//  xylophone
//
//  Created by Md Najmuzzaman on 8/21/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onButtonPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            sender.alpha = 1.0
        }
    }
    
    func playSound(soundName: String){
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav") else { return }
        player = try! AVAudioPlayer(contentsOf: url)
        player.play()
    }
}

