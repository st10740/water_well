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
    
    
    @IBOutlet weak var titleStack: UIStackView!
    @IBOutlet weak var topPlace: UIStackView!
    
    @IBOutlet weak var navigation: UINavigationItem!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //手機號碼輸入版型設定
        mystackview.addBroader(color: .white, bordercolor: .gray, TF: phoneTF)
        phoneTF.layer.borderColor = UIColor.white.cgColor
        phoneTF.layer.borderWidth = 2
        phoneLable.textColor = UIColor.init(displayP3Red: 119/255, green: 119/255, blue: 119/255, alpha: 1)

        //密碼輸入版型設定
        passwordStack.addBroader(color: .white, bordercolor: .gray, TF: passwordTF)
        passwordTF.layer.borderColor = UIColor.white.cgColor
        passwordTF.layer.borderWidth = 2
        passwordLable.textColor = UIColor.init(displayP3Red: 119/255, green: 119/255, blue: 119/255, alpha: 1)
        
        //登入版型設定
        let blueColor = UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1)
        LoginStack.makeRectangle(color: blueColor)
        
        signUp.setTitleColor(blueColor, for: .normal)
        forgetPassword.setTitleColor(blueColor, for: .normal)
        
        //調整標題的位置
        titleStack.translatesAutoresizingMaskIntoConstraints = false
        titleStack.centerXAnchor.constraint(equalTo: topPlace.centerXAnchor, constant: 0).isActive = true
        titleStack.centerYAnchor.constraint(equalTo: topPlace.centerYAnchor, constant: -13).isActive = true
        
        let barAppearance =  UINavigationBarAppearance()
        barAppearance.configureWithTransparentBackground()
        navigationController?.navigationBar.standardAppearance = barAppearance
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if false {  //手機號碼錯誤
            phoneErrorAppear()
        }
        
        if false { //密碼錯誤
            passwordErrorAppear()
        }
        
        
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    func phoneErrorAppear(){
        //變紅框
        mystackview.addBroader(color: .white, bordercolor: UIColor.init(displayP3Red: 236/255, green: 62/255, blue: 74/255, alpha: 1) , TF: phoneTF)
        
        //產生文字訊息
        let phoneerror = UILabel()
        phoneerror.text = "您輸入的手機號碼不存在"
        phoneerror.textColor = UIColor.init(displayP3Red: 236/255, green: 62/255, blue: 74/255, alpha: 1)
        
        phoneerror.font = UIFont.systemFont(ofSize: 12)
        
        view.addSubview(phoneerror)
        
        //設autolayout
        phoneerror.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints = [
            phoneerror.leadingAnchor.constraint(equalTo: mystackview.leadingAnchor),
            phoneerror.topAnchor.constraint(equalTo: mystackview.bottomAnchor, constant: 4)]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func passwordErrorAppear(){
        //變紅框
        passwordStack.addBroader(color: .white, bordercolor: UIColor.init(displayP3Red: 236/255, green: 62/255, blue: 74/255, alpha: 1) , TF: passwordTF)
        
        //產生文字訊息
        let passworderror = UILabel()
        passworderror.text = "您輸入的密碼錯誤"
        passworderror.textColor = UIColor.init(displayP3Red: 236/255, green: 62/255, blue: 74/255, alpha: 1)
        passworderror.font = UIFont.systemFont(ofSize: 12)
        
        view.addSubview(passworderror)
        
        //設autolyout
        passworderror.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints = [
            passworderror.leadingAnchor.constraint(equalTo: passwordStack.leadingAnchor),
            passworderror.topAnchor.constraint(equalTo: passwordStack.bottomAnchor, constant: 4)]
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    @IBAction func goRegist(_ sender: Any) {
        performSegue(withIdentifier: "gotoRegist", sender: self)
    }
    
    @IBAction func goForgetPassword(_ sender: Any) {
        performSegue(withIdentifier: "gotoForgetPassword", sender: self)
    }
    
    
    
    


}

extension UIStackView {

    func addBroader(color: UIColor, bordercolor: UIColor, TF: UITextField) {
        let subview = UIView(frame: bounds)
        subview.backgroundColor = color
        subview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        subview.layer.cornerRadius = 5
        
        subview.layer.borderColor = bordercolor.cgColor
        subview.layer.borderWidth = 0.5
        
        insertSubview(subview, belowSubview: TF)
    }
    
    func makeRectangle(color: UIColor){
        let subview = UIView(frame: bounds)
        subview.backgroundColor = color
        subview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        subview.layer.cornerRadius = 5
        
        subview.isUserInteractionEnabled = true
        
        insertSubview(subview, at: 0)
    }

}

