//
//  Singleton.swift
//  LazyTourist
//
//  Created by Nicolas Aubé on 16/04/2018.
//  Copyright © 2018 Nico aka Babou le barbar. All rights reserved.
//

import UIKit

final class Singleton: NSObject {

    static let shared = Singleton()
    
    private override init() {
        
    }
    
    var btn1 = Int()
    var btn2 = Int()
    var btn3 = Int()
   
}
