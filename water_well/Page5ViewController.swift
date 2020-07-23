//
//  Page5ViewController.swift
//  water_well
//
//  Created by Mac_dev3 on 2020/7/20.
//  Copyright © 2020 Mac_dev3. All rights reserved.
//

import UIKit

class Page5ViewController: UIViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {

    var segmentedControl = UISegmentedControl()
    
    var pageViewControl = UIPageViewController()
    var viewControllerArr = Array<UIViewController>()
    var selectedIndex: Int = 0
    
    let mailTF = UITextField()
    let phoneTF = UITextField()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //segmented control設置
        segmentedControl = UISegmentedControl(items: ["信箱", "手機"])
        
        segmentedControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1)], for: .selected) //set selected title color

        
        segmentedControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.gray, NSAttributedString.Key.font: UIFont(name: "PingFangTC-semibold", size: 20) ?? UIFont.systemFont(ofSize: 20)], for: .normal)
        
        segmentedControl.frame = CGRect.init(x: self.view.frame.width / 2 - 66, y: 250, width: 132, height: 44) //location
        
        segmentedControl.selectedSegmentTintColor = UIColor.init(displayP3Red: 234/255, green: 239/255, blue: 253/255, alpha: 1) //selected background
        
        segmentedControl.backgroundColor = UIColor.white
        
        segmentedControl.addTarget(self, action: #selector(segmentedChange), for: .valueChanged)
        
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addUnderlineForSelectedSegment()
        segmentedControl.layer.cornerRadius = 0
        self.view.addSubview(segmentedControl)
        
        
        
        //pageviewcontrol設置
        pageViewControl = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        pageViewControl.view.frame = CGRect.init(x: 0, y: 294, width: self.view.frame.width, height: 260)
        pageViewControl.delegate = self
        pageViewControl.dataSource = self
        pageViewControl.isEditing = true
        self.addChild(pageViewControl)
        self.view.addSubview(pageViewControl.view)
        
        
       
        
        //pageview裡面的view設置
        
        
        //viewController1
        let viewController1 = UIViewController()
        //viewController1.view.backgroundColor = UIColor.init(red: 1, green: 0.2, blue: 0.4, alpha: 0.3)
        viewController1.view.tag = 0
        viewController1.view.topBorder(width: 1, borderColor: UIColor.init(displayP3Red: 84/255, green: 119/255, blue: 119/255, alpha: 0.33))
        
        let recStack = UIStackView()
        recStack.frame = CGRect(x: self.view.frame.width / 2 - 134, y: 16, width: 268, height: 40)
        viewController1.view.addSubview(recStack)
        
        
        
        mailTF.placeholder = "請輸入信箱"
        mailTF.keyboardType = .emailAddress
        mailTF.frame = CGRect(x: recStack.frame.width / 2 - 119, y: recStack.frame.height / 2 - 12, width: 238, height: 24)
        recStack.addSubview(mailTF)
        
        recStack.addBroader(color: .white, bordercolor: UIColor.init(displayP3Red: 84/255, green: 119/255, blue: 119/255, alpha: 0.33), TF: mailTF)
        
        
        
        
        //viewController2
        let viewController2 = UIViewController()
        //viewController2.view.backgroundColor = UIColor.init(red: 0.4, green: 0.3, blue: 1, alpha: 0.3)
        viewController2.view.tag = 1
        viewController2.view.topBorder(width: 1, borderColor: UIColor.init(displayP3Red: 84/255, green: 119/255, blue: 119/255, alpha: 0.33))
        
       let recStack2 = UIStackView()
        recStack2.frame = CGRect(x: self.view.frame.width / 2 - 134, y: 16, width: 268, height: 40)
        viewController2.view.addSubview(recStack2)
        
        
        phoneTF.placeholder = "請輸入手機號碼"
        phoneTF.keyboardType = .phonePad
        phoneTF.frame = CGRect(x: recStack2.frame.width / 2 - 119, y: recStack2.frame.height / 2 - 12, width: 238, height: 24)
        recStack2.addSubview(phoneTF)
        
        recStack2.addBroader(color: .white, bordercolor: UIColor.init(displayP3Red: 84/255, green: 119/255, blue: 119/255, alpha: 0.33), TF: phoneTF)
        
        
        
        
        //bottom button
        let sendStack1 = UIStackView()
        sendStack1.frame = CGRect(x: self.view.frame.width / 2 - 134, y: 80, width: 268, height: 40)
        sendStack1.makeRectangle(color: UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1))
        viewController1.view.addSubview(sendStack1)
        
        let sendButton1 = UIButton()
        sendButton1.isEnabled = true
        sendButton1.setTitle("寄送驗證碼", for: .normal)
        sendButton1.frame = CGRect(x: sendStack1.frame.width / 2 - 110, y: sendStack1.frame.height / 2 - 12, width: 220, height: 24)

        sendStack1.addSubview(sendButton1)
        sendButton1.addTarget(self, action: #selector(clickBu1), for: .touchUpInside)
        
        
        let sendStack2 = UIStackView()
        sendStack2.frame = CGRect(x: self.view.frame.width / 2 - 134, y: 80, width: 268, height: 40)
        sendStack2.makeRectangle(color: UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1))
        viewController2.view.addSubview(sendStack2)
        
        let sendButton2 = UIButton()
        sendButton2.isEnabled = true
        sendButton2.setTitle("寄送驗證碼", for: .normal)
        sendButton2.frame = CGRect(x: sendStack2.frame.width / 2 - 110, y: sendStack2.frame.height / 2 - 12, width: 220, height: 24)
        sendStack2.addSubview(sendButton2)
        sendButton2.addTarget(self, action: #selector(clickBu2), for: .touchUpInside)
        
        viewControllerArr.append(viewController1)
        viewControllerArr.append(viewController2)
        
        pageViewControl.setViewControllers([viewControllerArr[0]], direction: .forward, animated: false, completion: nil)
        
    }
    

    
    @objc func segmentedChange(sender: UISegmentedControl){
        pageViewControl.setViewControllers([viewControllerArr[sender.selectedSegmentIndex]], direction: .forward, animated: false)
        sender.changeUnderlinePosition()
    }
    
    @objc func clickBu1(){
        print("tap1")
        if let control = storyboard?.instantiateViewController(withIdentifier: "vertificateBoard") as? Page6ViewController{
            control.receiceVer = mailTF.text ?? ""
            control.modalPresentationStyle = .fullScreen
            present(control, animated: false, completion: nil)
        }
        
    }
    
    @objc func clickBu2(){
         print("tap2")
         if let control = storyboard?.instantiateViewController(withIdentifier: "vertificateBoard") as? Page6ViewController{
             control.receiceVer = phoneTF.text ?? ""
             control.modalPresentationStyle = .fullScreen
             present(control, animated: false, completion: nil)
         }
         
     }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    //MARK:pageViewController delegate & datasource
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        selectedIndex = viewController.view.tag
        segmentedControl.selectedSegmentIndex = selectedIndex
        let pageIndex = viewController.view.tag - 1
        if pageIndex < 0 {
            return nil
        }
        return viewControllerArr[pageIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        selectedIndex = viewController.view.tag
        segmentedControl.selectedSegmentIndex = selectedIndex
        let pageIndex = viewController.view.tag + 1
        if pageIndex > 1 {
            return nil
        }
        return viewControllerArr[pageIndex]
    }
    
    
    @IBAction func goBack(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
    
    

    
}

extension UIView{
    
    private func drawBorder(rect:CGRect,color:UIColor){
        let line = UIBezierPath(rect: rect)
        let lineShape = CAShapeLayer()
        lineShape.path = line.cgPath
        lineShape.fillColor = color.cgColor
        self.layer.addSublayer(lineShape)
    }

    public func topBorder(width:CGFloat,borderColor:UIColor){
        let rect = CGRect(x: 0, y: 0, width: self.frame.size.width, height: width)
        drawBorder(rect: rect, color: borderColor)
    }
}

extension UISegmentedControl{
    
    public func addUnderlineForSelectedSegment(){
        let underlineWidth: CGFloat = self.bounds.size.width / CGFloat(self.numberOfSegments)
        let underlineHeight: CGFloat = 2.0
        let underlineXPosition = CGFloat(selectedSegmentIndex * Int(underlineWidth))
        let underLineYPosition = self.bounds.size.height - 1.0
        let underlineFrame = CGRect(x: underlineXPosition, y: underLineYPosition, width: underlineWidth, height: underlineHeight)
        let underline = UIView(frame: underlineFrame)
        underline.backgroundColor = UIColor(red: 33/255, green: 75/255, blue: 228/255, alpha: 1.0)
        underline.tag = 1
        self.addSubview(underline)
    }
    
    public func changeUnderlinePosition(){
        guard let underline = self.viewWithTag(1) else {return}
        let underlineFinalXPosition = (self.bounds.width / CGFloat(self.numberOfSegments)) * CGFloat(selectedSegmentIndex)
        UIView.animate(withDuration: 0.1, animations: {
            underline.frame.origin.x = underlineFinalXPosition
        })
    }
}
