//
//  ResultViewController.swift
//  ProjectM_ver2
//
//  Created by HIROKI KINJO on 2014/12/28.
//  Copyright (c) 2014年 TeamM. All rights reserved.
//
//結果画面ルーレットの
import Foundation
import UIkit


class ResultViewController1: UIViewController{
    var myButtonBefore: UIButton!
    var result:String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        var counter:UInt32 = appDelegate.kosuu!
        var resultarc:[UInt32] = appDelegate.Arryhairetu!
        var i = resultarc.count
        println(i)
        println("上は配列の要素数")
        println(counter)
        println("上は子数")
        for var count:UInt32 = 0; count < counter ; ++count{
            var countan = Int(count)
            result += String("\(resultarc[countan])")
            result += " "
        }
        println(result)
        // 背景色と絵を設定.
        self.view.backgroundColor = UIColor.whiteColor()
        let myImage = UIImage(named:"bg.png")!
        var myImageView = UIImageView()
        myImageView.image = myImage
        myImageView.frame = CGRectMake(0, 0, myImage.size.width, myImage.size.height)
        self.view.addSubview(myImageView)
        // Labelを作成.
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,400,50))
        // 背景をオレンジ色にする.
        myLabel.backgroundColor = UIColor.orangeColor()
        // 枠を丸くする.
        myLabel.layer.masksToBounds = true
        // コーナーの半径.
        myLabel.layer.cornerRadius = 20.0
        // Labelに文字を代入.
        myLabel.text = result
        // 文字の色を白にする.
        myLabel.textColor = UIColor.whiteColor()
        // 文字の影の色をグレーにする.
        myLabel.shadowColor = UIColor.grayColor()
        // Textを中央寄せにする.
        myLabel.textAlignment = NSTextAlignment.Center
        // 配置する座標を設定する.
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        
        // ViewにLabelを追加.
        self.view.addSubview(myLabel)
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
    
        // Viewの移動.
        self.presentViewController(myViewController, animated: true, completion: nil)
        //ここでリセット
    }
    
        
       
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

