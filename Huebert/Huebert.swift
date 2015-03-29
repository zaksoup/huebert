//
//  Huebert.swift
//  Huebert
//
//  Created by Zachary Auerbach on 3/26/15.
//  Copyright (c) 2015 Zachary Auerbach. All rights reserved.
//

import Foundation
import Alamofire

public class HueBridge {
    let host = "http://0.0.0.0:8000"
    public var zak = false
    public init() {
        Alamofire.request(.GET, "http://whatever.com/zak").responseJSON { (_, _, json, _) in
            let dict = json as! Dictionary<String, AnyObject>
            print(dict)
            self.zak = dict["awesome"]! as! Bool
        }
    }
    
    
}
