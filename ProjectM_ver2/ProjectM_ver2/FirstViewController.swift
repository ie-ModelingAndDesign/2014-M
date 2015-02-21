//
//  FirstViewController.swift
//  ProjectM_ver2
//
//  Created by HIROKI KINJO on 2014/12/28.
//  Copyright (c) 2014年 TeamM. All rights reserved.
//
//タイトル画面
import UIKit

class FirstViewController: UIViewController {
    
    //ボタンの宣言
    let myButton1: UIButton = UIButton()
    let myButton2: UIButton = UIButton()
    let myButton3: UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //背景を白にする
        self.view.backgroundColor = UIColor.whiteColor()
        let myImage = UIImage(named:"bg.png")!
        var myImageView = UIImageView()
        myImageView.image = myImage
        myImageView.frame = CGRectMake(0, 0, myImage.size.width, myImage.size.height)
        self.view.addSubview(myImageView)
        //ボタンのサイズ
        myButton1.frame = CGRectMake(0, 0, 200, 40)
        myButton2.frame = CGRectMake(0, 0, 200, 40)
        myButton3.frame = CGRectMake(0, 0, 200, 40)
        
        //ボタンの背景色
        myButton1.backgroundColor = UIColor.redColor()
        myButton2.backgroundColor = UIColor.yellowColor()
        myButton3.backgroundColor = UIColor.blueColor()
        
        //枠を丸くする
        myButton1.layer.masksToBounds = true
        myButton2.layer.masksToBounds = true
        myButton3.layer.masksToBounds = true
        
        //タイトルをつける
        myButton1.setTitle("ルーレット", forState: UIControlState.Normal)
        myButton1.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        myButton2.setTitle("チーム分け", forState: UIControlState.Normal)
        myButton2.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        myButton3.setTitle("順番決め", forState: UIControlState.Normal)
        myButton3.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)

        // コーナーの半径を設定する.
        myButton1.layer.cornerRadius = 20.0
        myButton2.layer.cornerRadius = 20.0
        myButton3.layer.cornerRadius = 20.0
        
        //ボタンをViewに追加
        self.view.addSubview(myButton1)
        self.view.addSubview(myButton2)
        self.view.addSubview(myButton3)
        
        // イベントを追加する.
        myButton1.addTarget(self, action: "onClickMyButton1:",forControlEvents: .TouchUpInside)
        myButton2.addTarget(self, action: "onClickMyButton2:",forControlEvents: .TouchUpInside)
        myButton3.addTarget(self, action: "onClickMyButton3:",forControlEvents: .TouchUpInside)

        // ボタンの位置を指定する.
        myButton1.layer.position = CGPoint(x: self.view.frame.width/2, y:500)
        myButton2.layer.position = CGPoint(x: self.view.frame.width/2, y:550)
        myButton3.layer.position = CGPoint(x: self.view.frame.width/2, y:600)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 //ボタンイベント
    
    func onClickMyButton1(sender: UIButton){
        println("ルーレット")
        //遷移先Viewを指定
        let mySelectViewController1: UIViewController = SelectViewController1()
        //遷移
        self.presentViewController(mySelectViewController1, animated: true, completion: nil)

    }
    func onClickMyButton2(sender: UIButton){
        println("チーム決め")
        let mySelectViewController2: UIViewController = SelectViewController2()
        self.presentViewController(mySelectViewController2, animated: true, completion: nil)
    }
    func onClickMyButton3(sender: UIButton){
        println("順番決め")
        let mySelectViewController3: UIViewController = SelectViewController3()
        self.presentViewController(mySelectViewController3, animated: true,completion: nil)
        
    }


}
