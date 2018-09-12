//
//  Person.swift
//  MyFirstSwiftDemo
//
//  Created by xiehewanbang on 2018/9/7.
//  Copyright © 2018年 xiehewanbang. All rights reserved.
//

import UIKit

class Person: NSObject {
    
  private  var name:String?
private    var age:Int? = 0
    
    override init() {
        name = "张三"
        age = 30
        super.init();
    }

}
