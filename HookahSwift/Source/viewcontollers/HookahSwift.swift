//
//  HookahSwift.swift
//  HookahSwift
//
//  Created by Hussein Alshlash on 30.03.2021.
//

import UIKit
import AVKit



public class HookahSwift: UIViewController {

    var isPlayed = false;
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .clear
    }

   
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: Bundle(for: HookahSwift.self))
    }
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    public override func viewDidAppear(_ animated: Bool) {
        
        if isPlayed {
            return
        }
        self.playVideo()
       
    }
    
    
  func playVideo() {
     guard let path = Bundle(for: HookahSwift.self).path(forResource: "hookah", ofType:"mp4") else {
        debugPrint("video.m4v not found")
        return
     }
    let player = AVPlayer(url: URL(fileURLWithPath: path))
    let playerController = AVPlayerViewController()
    playerController.player = player
    present(playerController, animated: true) {
        player.play()
        self.isPlayed = true;
    }
  }

}
