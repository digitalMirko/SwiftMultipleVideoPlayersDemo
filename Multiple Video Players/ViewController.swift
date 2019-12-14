//
//  ViewController.swift
//  Multiple Video Players
//
//  Created by Mirko Cukich on 12/10/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import WebKit

class ViewController: UIViewController {
    
    // Local Player Demo
    var localPlayerController = AVPlayerViewController()
    var localPlayer: AVPlayer?
    
    // Streaming Player Demo
    var streamingPlayerController = AVPlayerViewController()
    var streamingPlayer: AVPlayer?
    
    // YouTube Player Demo
    @IBOutlet weak var youTubeWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Local Player Demo
        let localVideoName = Bundle.main.path(forResource: "SampleVideo_1280_10MG", ofType: "mp4")
        
        localPlayer = AVPlayer(url: URL(fileURLWithPath: localVideoName!))
        localPlayerController.player = localPlayer
        
        // Streaming Player Demo
        let streamingVideoURL: NSURL? = NSURL(string: "https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_1280_10MG.mp4")
        
        streamingPlayer = AVPlayer(url: streamingVideoURL! as URL)
        streamingPlayerController.player = streamingPlayer
        
        // YouTube Player Demo
        // YouTube Video: Manhattan, New York, Cityscape, Metropolitan - Stock Video Footage Collection
        let youTubeString = "<iframe width=\"1920\" height=\"1080\" src=\"https://www.youtube.com/embed/J6bY8rJ-e6A\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"
        
        youTubeWebView.loadHTMLString(youTubeString, baseURL: nil)
    }

    // Local Player Demo
    @IBAction func playLocalVideo(_ sender: Any) {
        
        self.present(self.localPlayerController, animated: true, completion: {
            
            self.localPlayerController.player?.play()
        })
    }
    
    // Streaming Player Demo
    @IBAction func playStreamingVideo(_ sender: Any) {
        
        self.present(self.streamingPlayerController, animated: true, completion: {
            
            self.streamingPlayerController.player?.play()
            
        })
    }
    

}

