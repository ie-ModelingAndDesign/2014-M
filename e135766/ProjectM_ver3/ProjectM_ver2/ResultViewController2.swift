//
//  ResultViewController2.swift
//  ProjectM_ver2
//
//  Created by HIROKI KINJO on 2014/12/29.
//  Copyright (c) 2014年 TeamM. All rights reserved.
//
//結果画面(チーム分け)
import Foundation
import UIkit

class ResultViewController2: UIViewController {
    var myButtonBefore: UIButton!
    var result:String = " "
    var resulttas:[UInt32] = [] // チーム分けの1チームあたりの人数を入れる配列
        override func viewDidLoad() {
        super.viewDidLoad()
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        var counter:UInt32 = appDelegate.kosuu! //チーム数 = 子数
        var vounter:UInt32 = counter //予備
        var resultarc:[UInt32] = appDelegate.Arryhairetu! //乱数配列
        var i = Double(resultarc.count) //乱数配列の要素数＝母数
        var imaz = Double(resultarc.count) //予備
        var mem = ceil(i / Double(counter)) //1チームの人数(端数が入るほう)
            for var ia:Int = 0;ia < Int(vounter);++ia{
                resulttas.append(UInt32(mem))
                imaz = imaz - mem
                counter--
                if imaz % Double(counter) == 0{
                 mem = imaz / Double(counter)
                }
            }
            var adsre:Int = 0
            var agag:Int = 0
            println(i)
            println("上は母数")
            println(resulttas)
            result += "team" + String(adsre+1) + ": "
            result += String("\(resultarc[0])")
            agag++
            for var iz:Int = 1;iz < Int(i);++iz{
                if agag == Int(resulttas[adsre]){
                    adsre++
                    result += "\n"
                    result += "team" + String(adsre+1) + ": "
                    agag = 0
                }else{
                    result += ", "
                }
                result += String("\(resultarc[iz])")
                agag++
            }
            print(result)
        // 背景色を設定
        self.view.backgroundColor = UIColor.whiteColor()
        let myImage = UIImage(named:"bg.png")!
        var myImageView = UIImageView()
        myImageView.image = myImage
        myImageView.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        self.view.addSubview(myImageView)
            
            
            // 背景色を設定.
            //self.view.backgroundColor = UIColor.whiteColor()  ?
            
            // Labelを作成.
            var height:CGFloat = CGFloat(adsre + 1)
            let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,400,25*height))
            
            // 背景をオレンジ色にする.
            myLabel.backgroundColor = UIColor.orangeColor()
            
            // 枠を丸くする.
            myLabel.layer.masksToBounds = true
            
            // コーナーの半径.
            myLabel.layer.cornerRadius = 20.0
            
            // Labelに文字を代入.
            //myLabel.text = "Hello Swift!!"
            myLabel.text = result
            myLabel.numberOfLines = adsre+1
            //myLabel.sizeToFit()
            //myLabel.lineBreakMode = NSLineBreakMode.ByCharWrapping
            // 文字の色を白にする.
            myLabel.textColor = UIColor.whiteColor()
            
            // 文字の影の色をグレーにする.
            myLabel.shadowColor = UIColor.grayColor()
            
            // Textを中央寄せにする.
            myLabel.textAlignment = NSTextAlignment.Center
            
            // 配置する座標を設定する.
            myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200 + (height * 5))
            
            // Viewの背景色を青にする.
            //self.view.backgroundColor = UIColor.cyanColor()
            
            // ViewにLabelを追加.
            self.view.addSubview(myLabel)
            
            
            
            
            
            
            //UIテキストを作成
            // TextView生成する.
            /*let myTextView: UITextView = UITextView(frame: CGRectMake(10, 50, self.view.frame.width - 20, 500))
            // TextViewの背景を白に設定
            myTextView.backgroundColor = UIColor.whiteColor()
            //表示するテキスト
            myTextView.text = result
            /*
            var gorira:String = "abcdefghj \n asdfasdfasdf"
            println(gorira)
            myTextView.text = gorira
            */
            // フォントの設定をする.
            myTextView.font = UIFont.systemFontOfSize(CGFloat(20))
            //フォントを黒にする
            myTextView.textColor = UIColor.blackColor()
            //テキストを編集不可にする
            myTextView.editable = false
            //textView追加
            self.view.addSubview(myTextView)*/
            
            // UIボタンを作成
        myButtonBefore = UIButton(frame: CGRectMake(0,0,200,50))
        myButtonBefore.backgroundColor = UIColor.redColor();
        myButtonBefore.layer.masksToBounds = true
        myButtonBefore.setTitle("モード選択に戻る", forState: .Normal)
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

