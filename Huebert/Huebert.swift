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
    let uuid = "some_uuid"
    let devicetype = "HuebertDevice"
    
    public var connected = false
    
    public init() { }
    
    public func connect() {
        let body = [
            "devicetype": devicetype,
            "username": uuid
        ]
        Alamofire.request(.POST, host + "/api", parameters: body, encoding: .JSON)
                 .responseJSON() { (_, _, json, _) in
                    let retArr = json as! [AnyObject]
                    let dict = retArr[0] as! [String: AnyObject]
                    if dict.indexForKey("errors") != nil {
                        return // this is the retry case
                    } else if dict.indexForKey("success") != nil {
                        self.connected = true
                    }
            
        }
    }
    
}
