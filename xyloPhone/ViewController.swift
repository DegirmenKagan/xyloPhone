//
//  ViewController.swift
//  xyloPhone
//
//  Created by Kağan Değirmen on 24.05.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    @IBAction func keyPressed(_ sender: UIButton) {
        playKeySound(key: sender.currentTitle!)
    }
    
    //Get .wav file named as our "Key" value, and play it
    func playKeySound(key: String){
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

