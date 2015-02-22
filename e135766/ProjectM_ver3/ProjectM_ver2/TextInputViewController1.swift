//  TextInputViewController1.swift
//  ProjectM_ver2
//
//  Created by HIROKI KINJO on 2015/01/10.
//  Copyright (c) 2015年 TeamM. All rights reserved.
//
//テキストボックスで名前入力するところ
import Foundation
import UIkit

class TextInputViewController1:UIViewController,UITextFieldDelegate{
    //properties and methods
    override func viewDidLoad() {
        super.viewDidLoad()
        //ここがメイン
        //オブジェクトの呼び出し
        /*
        //ここで母数つかって配列的に変数宣言
        for var count = 0;count > 母数;++count{
        //new textfieldfriendsでインスタンス化
        }
        */
    }
}
/*
    class textfieldfriends:UIViewController,UITextFieldDelegate {
        var originx = 0
        var originy = 0
        init(a1:Int,b1:Int){
            //UITextfieldを作成する
        let myTextField: UITextField = UITextField(frame: CGRectMake(0,0,170,30))
            // Delegateを設定する.
            myTextField.delegate = self
            // 枠を表示する.
            myTextField.borderStyle = UITextBorderStyle.RoundedRect

            // UITextFieldの表示する位置を設定する.
        myTextField.layer.position = CGPoint(x:self.view.bounds.width/2,y:100);
            // Viewに追加する.
            self.view.addSubview(myTextField)

        }
        deinit{}
        //UITextFieldが編集された直後に呼ばれる
        
        func textFieldDidBeginEditing(textField: UITextField){
            println("textFieldDidBeginEditing:" + textField.text)
        }
        //UITextFieldが編集終了する直前に呼ばれる.
        func textFieldShouldEndEditing(textField: UITextField) -> Bool {
            println("textFieldShouldEndEditing:" + textField.text)
            
            return true
        }
        //改行ボタンが押された際に呼ばれる.
        func textFieldShouldReturn(textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            
            return true
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }

        
        
        
}
*/