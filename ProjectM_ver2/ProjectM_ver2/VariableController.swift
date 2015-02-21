//
//  VariableController.swift
//  ProjectM_ver2
//
//  Created by HIROKI KINJO on 2014/12/28.
//  Copyright (c) 2014年 TeamM. All rights reserved.
//
//変数の管理
import Foundation
/*
protocol VariableDelegate1{
    func resultvarisend1(kodommo:UInt32,hairetu:[UInt32])
}
*/

class VariableController: NSObject{
  //var delegate: VariableDelegate1! = nil
  //結果で使う変数置き場
    
  //母数(何個の中から)
    var boss:UInt32 = 0
  //子数(何個とる)
    var kobun:UInt32 = 0
  //結果(ルーレット用)
    var rureresult:[UInt32] = []
  //振り分け前人数(何人で)
  //チーム数(何チームつくる)
  //人数(順番用)
    
    
    
    func variablerure(bos:UInt32, kob:UInt32, rure:[UInt32]){
        //ルーレット結果とかの変数を値に入れるための関数
        self.boss = bos
        self.kobun = kob
        self.rureresult = rure
        println(rure)
        println(rure.count)
    //    self.delegate.resultvarisend1(self.kobun,hairetu: rureresult)
            }
    
    func variableteam(){
        //チーム分け用の変数に値入れる用関数
    
    }
    
}