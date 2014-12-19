//
//  Rand.swift
//  ProjectM
//
//  Created by HIROKI KINJO on 2014/12/18.
//  Copyright (c) 2014年 TeamM. All rights reserved.
//

import Foundation


class Rand{
  
    
 func getrandom(xi:UInt32,yi:UInt32){
    
    var irand: [UInt32] = []
    var ival: [UInt32] = []
    var max: UInt32 = 0
    var num: UInt32 = 0
    var irandkey: UInt32 = 0
    var ivalcont: Int = 0
    var irandkeyb:Int = 0
    var sisu:Int = 0
    
    max = numericCast(xi)
    sisu = numericCast(yi)
        
    for var i:UInt32 = 0; i < max; ++i{
    irand.append(i + 1)
    }
    
    for var u:UInt32 = 0; u < max; ++u{
        ival.append(0)
    }

    
    num = max
    
    for var icont:UInt32 = 0 ;  icont < max ; ++icont{
        
      
        irandkey = arc4random_uniform( UInt32(max) + 1)
        
        irandkey %= num
        
        irandkeyb = numericCast(irandkey)
        
        ival[ivalcont] = irand[irandkeyb]
        
        irand[irandkeyb] = irand[(num - 1)]
        
        num--
        
        ivalcont++
        
    }
    
    
    for var kazoe:Int = 0 ; kazoe < sisu ; ++kazoe{
    println(ival[kazoe])
        
    }
    
    
}
}