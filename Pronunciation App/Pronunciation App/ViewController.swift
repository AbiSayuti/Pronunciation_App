//
//  ViewController.swift
//  Pronunciation App
//
//  Created by Abi Sayuti on 12/4/17.
//  Copyright © 2017 Abi Sayuti. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var Word: UITextView!
    let synth = AVSpeechSynthesizer()
    var myuttarance = AVSpeechUtterance(string: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func BPronunciation(_ sender: Any) {
        
        myuttarance = AVSpeechUtterance(string: Word.text)
        myuttarance.rate = 0.3
        synth.speak(myuttarance)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

