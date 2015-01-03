//
//  SelectViewController1.swift
//  ProjectM_ver2
//
//  Created by HIROKI KINJO on 2014/12/28.
//  Copyright (c) 2014年 TeamM. All rights reserved.
//
//選択画面1(ルーレット用)
import Foundation
import UIKit

class SelectViewController1: UIViewController {
    
    let myStepLabel1: UILabel = UILabel(frame: CGRectMake(0,0,150,150))
    let myStepLabel2: UILabel = UILabel(frame: CGRectMake(0,0,150,150))
    let myStepper1 : UIStepper = UIStepper()
    let myStepper2 : UIStepper = UIStepper()
    var myButtonNext: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Stepperの作成する.
        
        myStepper1.center = CGPointMake(self.view.frame.width/2, 400)
        myStepper1.backgroundColor = UIColor.grayColor()
        myStepper1.tintColor = UIColor.whiteColor()
        myStepper1.addTarget(self, action: "stepperOneChanged1:", forControlEvents: UIControlEvents.ValueChanged)
        
        myStepper2.center = CGPointMake(self.view.frame.width/2, 500)
        myStepper2.backgroundColor = UIColor.grayColor()
        myStepper2.tintColor = UIColor.whiteColor()
        myStepper2.addTarget(self, action: "stepperOneChanged2:", forControlEvents: UIControlEvents.ValueChanged)
        // 最小値, 最大値, 規定値の設定をする.
        myStepper1.minimumValue = 2
        myStepper1.maximumValue = 100
        myStepper1.value = 2
        
        myStepper2.minimumValue = 1
        myStepper2.maximumValue = 1
        myStepper2.value = 1
        
        // ボタンを押した際に動く値の.を設定する.
        myStepper1.stepValue = 1
        myStepper2.stepValue = 1
        
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
        self.view.addSubview(myStepper2)
        self.view.addSubview(myButtonNext)
        
        // Labelを作成する.
        myStepLabel1.backgroundColor = UIColor.whiteColor()
        myStepLabel1.layer.masksToBounds = true
        //myStepLabel1.layer.cornerRadius = 75.0
        myStepLabel1.textColor = UIColor.blackColor()
        myStepLabel1.shadowColor = UIColor.grayColor()
        myStepLabel1.font = UIFont.systemFontOfSize(CGFloat(30))
        myStepLabel1.textAlignment = NSTextAlignment.Center
        myStepLabel1.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        myStepLabel1.text = "\(Int(myStepper1.value))"+"個から"
        
        myStepLabel2.backgroundColor = UIColor.whiteColor()
        myStepLabel2.layer.masksToBounds = true
        //myStepLabel2.layer.cornerRadius = 75.0
        myStepLabel2.textColor = UIColor.blackColor()
        myStepLabel2.shadowColor = UIColor.grayColor()
        myStepLabel2.font = UIFont.systemFontOfSize(CGFloat(30))
        myStepLabel2.textAlignment = NSTextAlignment.Center
        myStepLabel2.layer.position = CGPoint(x: self.view.bounds.width/2,y: 300)
        myStepLabel2.text = "\(Int(myStepper2.value))"+"個選ぶ"
        
        // Viewの背景色を白にする.
        self.view.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(myStepLabel1);
        self.view.addSubview(myStepLabel2);
        
    }
    
    func stepperOneChanged1(stepper: UIStepper){
        myStepLabel1.text = "\(Int(myStepper1.value))"+"個から"
        if( myStepper2.value >= myStepper1.value){
            myStepper2.value = myStepper1.value - 1
            myStepLabel2.text = "\(Int(myStepper2.value))"+"個選ぶ"
        }
        myStepper2.maximumValue = myStepper1.value - 1

    }
    
    func stepperOneChanged2(stepper: UIStepper){
        myStepLabel2.text = "\(Int(myStepper2.value))"+"個選ぶ"
        if( myStepper2.value >= myStepper1.value){
            myStepper2.value = myStepper1.value - 1
                   }
        
    }
    
    func onClickMyButton(sender: UIButton){
        
        var x:UInt32 = numericCast(Int(myStepper1.value))
        var y:UInt32 = numericCast(Int(myStepper2.value))
        
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