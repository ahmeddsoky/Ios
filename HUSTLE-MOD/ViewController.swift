//
//  ViewController.swift
//  HUSTLE-MOD
//
//  Created by Ahmed Dsoky on 10/30/17.
//  Copyright © 2017 Ahmed Dsoky. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    
    var player : AVAudioPlayer!

    
    // Outlet refrance
    
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    
    @IBOutlet weak var powerBTN: UIButton!
    
    @IBOutlet weak var cloudHolder: UIView!
    
    
    @IBOutlet weak var rocet: UIImageView!
    
    
    @IBOutlet weak var hustleLb: UILabel!
    
    
    @IBOutlet weak var onLb: UILabel!
    
    
    // view didload
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError{
            print(error.description)
        }
        
        
        
      // action refrance=
    }
    @IBAction func powerBtnPress(_ sender: Any) {
        
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerBTN.isHidden = true
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocet.frame = CGRect(x: 0, y: 40, width: 375, height: 371)
        }) { (finished) in
            self.hustleLb.isHidden = false
            self.onLb.isHidden = false
        }
        
        
    }
    


}

