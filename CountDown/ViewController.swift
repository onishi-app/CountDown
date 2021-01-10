//
//  ViewController.swift
//  CountDown
//
//  Created by ryosuke on 2021/01/10.
//

import UIKit

class ViewController: UIViewController {
      
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    var time = 5
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = String(time)
    }
    
    // ボタンが押された時の処理
    @IBAction func buttonAction(_ sender: Any) {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
            self.time -= 1
            self.countLabel.text = String(self.time)
            
            if self.time == 0 {
                self.performSegue(withIdentifier: "next", sender: nil)
            }
        })
    }
}

