//
//  ViewController.swift
//  video player
//
//  Created by Jon Salkin on 5/18/23.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        
        playVideo()
    }
    
    private func playVideo() {
        guard let path=Bundle.main.path(forResource: "archetypeQuiz", ofType: "mp4") else {
            debugPrint("archetypeQuiz.mp4 not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
    
}

