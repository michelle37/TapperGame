//
//  ViewController.swift
//  TapperGame
//
//  Created by Michelle Lee on 2/23/16.
//  Copyright © 2016 Michelle Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var MaxTaps = 0
    var currentTaps = 0

    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var TextBar: UITextField!
    @IBOutlet weak var PlayBtn: UIButton!

    @IBOutlet weak var CoinBtn: UIButton!
    @IBOutlet weak var TextResult: UILabel!

    @IBAction func CoinTapBtn(sender: UIButton) {
        currentTaps++
        TapUpdate()
        if isGameOver(){
            restartGame()
        }
        
    }

    @IBAction func PlayGameBtn(sender: UIButton) {
        
        if TextBar.text != nil && TextBar.text != "" {
        
        MaxTaps = Int(TextBar.text!)!
        currentTaps = 0
        TapUpdate()
            
        Logo.hidden = true
        TextBar.hidden = true
        PlayBtn.hidden = true
        TextResult.hidden = false
        CoinBtn.hidden = false
        
        
        }
    }
    
    
    func TapUpdate(){
        TextResult.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= MaxTaps {
            return true
        }else{
            return false
        }
    }
    
    func restartGame(){
        MaxTaps = 0
        TextBar.text = ""
        Logo.hidden = false
        TextBar.hidden = false
        PlayBtn.hidden = false
        TextResult.hidden = true
        CoinBtn.hidden = true
        
    }
}

//Game Ended!
