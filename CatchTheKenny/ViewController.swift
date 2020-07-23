//
//  ViewController.swift
//  CatchTheKenny
//
//  Created by Baris Ozdemirci on 22.07.2020.
//  Copyright © 2020 Barış ÖZDEMİRCİ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer();
    var counter = 0;
    var kennys = [UIImageView]();
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    @IBOutlet weak var image7: UIImageView!
    @IBOutlet weak var image8: UIImageView!
    @IBOutlet weak var image9: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad();

        
        counter = 10;
        timeLabel.text = "Time: \(counter)";
        kennys = [image, image2, image3, image4, image5, image6, image7, image8, image9]
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        print("counter", counter)
    }

    @objc func fireTimer() {
        for kennys in kennys {
            kennys.isHidden = true;
        }
        let number = Int.random(in: 1 ..< 10)
        kennys[number - 1].isHidden = false
        
        timeLabel.text = "Time: \(counter)";
        counter -= 1;
        print("number", number)
        if counter == 0 {
            timer.invalidate();
            timeLabel.text = "Time's Over";
        }
    }
}

