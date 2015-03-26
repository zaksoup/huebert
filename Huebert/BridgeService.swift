//
//  BridgeService.swift
//  Huebert
//
//  Created by Zachary Auerbach on 3/26/15.
//  Copyright (c) 2015 Zachary Auerbach. All rights reserved.
//

import Foundation
import Alamofire

protocol BridgeProtocol {
    func get(NSString, Dictionary) -> (Int, Dictionary?)
    func put(NSString, Dictionary) -> (Int, Dictionary?)
    func post(NSString, Dictionary) -> (Int, Dictionary?)
}