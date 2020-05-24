//
//  ViewController.swift
//  YoutubeInWebView
//
//  Created by Srans022019 on 24/05/20.
//  Copyright © 2020 vikas. All rights reserved.
//

import UIKit
import YoutubePlayer_in_WKWebView

class ViewController: UIViewController {

    @IBOutlet weak var player: WKYTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player.load(withVideoId: "Jlj0wc3USrU")
        player.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        player.stopVideo()
    }

}

extension ViewController: WKYTPlayerViewDelegate {
    
    func playerViewDidBecomeReady(_ playerView: WKYTPlayerView) {
        playerView.playVideo()
    }
    
}

