//
//  Page3ViewController.swift
//  water_well
//
//  Created by Mac_dev3 on 2020/7/14.
//  Copyright © 2020 Mac_dev3. All rights reserved.
//

import UIKit

class Page3ViewController: UIViewController {

    @IBOutlet weak var mystackview: UIStackView!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var phoneLable: UILabel!
    
    @IBOutlet weak var passwordStack: UIStackView!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var passwordLable: UILabel!
    
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var LoginStack: UIStackView!
    
    
    @IBOutlet weak var signUp: UIButton!
    @IBOutlet weak var forgetPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //手機號碼輸入版型設定
        mystackview.addBroader(color: .white, bordercolor: .gray)
        phoneTF.layer.borderColor = UIColor.white.cgColor
        phoneTF.layer.borderWidth = 2
        phoneLable.textColor = UIColor.init(displayP3Red: 119/255, green: 119/255, blue: 119/255, alpha: 1)

        //密碼輸入版型設定
        passwordStack.addBroader(color: .white, bordercolor: .gray)
        passwordTF.layer.borderColor = UIColor.white.cgColor
        passwordTF.layer.borderWidth = 2
        passwordLable.textColor = UIColor.init(displayP3Red: 119/255, green: 119/255, blue: 119/255, alpha: 1)
        
        //登入版型設定
        let blueColor = UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1)
        LoginStack.makeRectangle(color: blueColor)
        
        signUp.setTitleColor(blueColor, for: .normal)
        forgetPassword.setTitleColor(blueColor, for: .normal)
        
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    


}

extension UIStackView {

    func addBroader(color: UIColor, bordercolor: UIColor) {
        let subview = UIView(frame: bounds)
        subview.backgroundColor = color
        subview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        subview.layer.cornerRadius = 5
        
        subview.layer.borderColor = bordercolor.cgColor
        subview.layer.borderWidth = 0.5
        
        insertSubview(subview, at: 0)
    }
    
    func makeRectangle(color: UIColor){
        let subview = UIView(frame: bounds)
        subview.backgroundColor = color
        subview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        subview.layer.cornerRadius = 5
        
        insertSubview(subview, at: 0)
    }

}

