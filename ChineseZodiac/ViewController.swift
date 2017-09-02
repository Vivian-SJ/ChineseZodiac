//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by Vivian on 2017/7/28.
//  Copyright © 2017年 Vivian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var year: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    let offset = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        year.resignFirstResponder()
    }


    @IBAction func okDidTap(_ sender: Any) {
        year.resignFirstResponder()
        
        if let yearOfBirth = Int(year.text!) {
            var imageNum = (yearOfBirth - offset) % 12
            image.image = UIImage(named: String(imageNum))
        }
    }
}

