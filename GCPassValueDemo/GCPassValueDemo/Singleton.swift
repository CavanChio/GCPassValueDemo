//
//  Singleton.swift
//  GCPassValueDemo
//
//  Created by Cavan on 2017/2/20.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import Foundation

class Singleton {
    //单例属性, 用于传值
    var text: String!
    
    private static let singleton = Singleton()
    
    //获取单例实例方法
    class func shareInstance() -> Singleton {
        return self.singleton
    }
    
    //私有化init初始化方法. 防止通过此方法创建对象
    private init() {
        
    }
    
}
