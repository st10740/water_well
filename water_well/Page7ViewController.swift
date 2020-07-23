//
//  Page7ViewController.swift
//  water_well
//
//  Created by Mac_dev3 on 2020/7/23.
//  Copyright © 2020 Mac_dev3. All rights reserved.
//

import UIKit

class Page7ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var buttonStack: UIStackView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.textColor = UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1)
        buttonStack.makeRectangle(color: UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1))
        startButton.setTitleColor(.white, for: .normal)
        

    }
    


}
