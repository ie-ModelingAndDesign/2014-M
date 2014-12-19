//
//  SecondViewController.swift
//  ProjectM
//
//  Created by HIROKI KINJO on 2014/12/18.
//  Copyright (c) 2014年 TeamM. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var myButtonBefore: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 背景色を設定.
        self.view.backgroundColor = UIColor.blueColor()
        
        // UIボタンを作成
        myButtonBefore = UIButton(frame: CGRectMake(0,0,120,50))
        myButtonBefore.backgroundColor = UIColor.redColor();
        myButtonBefore.layer.masksToBounds = true
        myButtonBefore.setTitle("Before", forState: .Normal)
        myButtonBefore.layer.cornerRadius = 20.0
        myButtonBefore.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-50)
        myButtonBefore.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(myButtonBefore);
        
    }
    //
    // ボタンイベント
    //
    func onClickMyButton(sender: UIButton){
        
        // 遷移するViewを定義.
        let myViewController: UIViewController = FirstViewController()
        
        // アニメーションを設定.
       //myViewController.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
        
        // Viewの移動.
        self.presentViewController(myViewController, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
