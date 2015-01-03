//
//  SelectViewController3.swift
//  ProjectM_ver2
//
//  Created by HIROKI KINJO on 2014/12/30.
//  Copyright (c) 2014年 TeamM. All rights reserved.
//
//順番決め用
import Foundation
import UIKit

class SelectViewController3: UIViewController {
    
    let myStepLabel1: UILabel = UILabel(frame: CGRectMake(0,0,300,150))
    
    let myStepper1 : UIStepper = UIStepper()
    
    var myButtonNext: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        // Stepperの作成する.
        
        myStepper1.center = CGPointMake(self.view.frame.width/2, 400)
        myStepper1.backgroundColor = UIColor.grayColor()
        myStepper1.tintColor = UIColor.whiteColor()
        myStepper1.addTarget(self, action: "stepperOneChanged1:", forControlEvents: UIControlEvents.ValueChanged)
        
        // 最小値, 最大値, 規定値の設定をする.
        myStepper1.minimumValue = 2
        myStepper1.maximumValue = 100
        myStepper1.value = 2
        
        
        // ボタンを押した際に動く値の.を設定する.
        myStepper1.stepValue = 1
       
        
        // ボタンの生成する.
        myButtonNext = UIButton(frame: CGRectMake(0,0,120,50))
        myButtonNext.backgroundColor = UIColor.redColor();
        myButtonNext.layer.masksToBounds = true
        myButtonNext.setTitle("Next", forState: .Normal)
        myButtonNext.layer.cornerRadius = 20.0
        myButtonNext.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-50)
        myButtonNext.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        // Viewに追加する.
        self.view.addSubview(myStepper1)
        
        self.view.addSubview(myButtonNext)
        
        // Labelを作成する.
        myStepLabel1.backgroundColor = UIColor.blueColor()
        myStepLabel1.layer.masksToBounds = true
        myStepLabel1.layer.cornerRadius = 75.0
        myStepLabel1.textColor = UIColor.whiteColor()
        myStepLabel1.shadowColor = UIColor.grayColor()
        myStepLabel1.font = UIFont.systemFontOfSize(CGFloat(30))
        myStepLabel1.textAlignment = NSTextAlignment.Center
        myStepLabel1.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        myStepLabel1.text = "\(Int(myStepper1.value))"+"人の順番を決める"
        
        // Viewの背景色を白にする.
        self.view.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(myStepLabel1);
        
    }
    
    func stepperOneChanged1(stepper: UIStepper){
        myStepLabel1.text = "\(Int(myStepper1.value))"+"人の順番を決める"
        
    }
    
           
    
    
    func onClickMyButton(sender: UIButton){
        
        var x:UInt32 = numericCast(Int(myStepper1.value))
        var y:UInt32 = numericCast(Int(myStepper1.value))
        
        // 遷移するViewを定義する.
        let myResultViewController: UIViewController = ResultViewController1()
        
        //計算用ModelController定義する
        let myModel: Model = Model()
        myModel.getrandom(x, yi: y)
        
        // Viewの移動する.
        self.presentViewController(myResultViewController, animated: true, completion: nil)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
      
}
