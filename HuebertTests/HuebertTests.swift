//
//  HuebertTests.swift
//  HuebertTests
//
//  Created by Zachary Auerbach on 3/26/15.
//  Copyright (c) 2015 Zachary Auerbach. All rights reserved.
//

import Quick
import Nimble
import Huebert
import Mockingjay

class HueBridgeTests: QuickSpec {
    override func spec() {
        describe("HueBridge") {
            let bridge = HueBridge()
            
            beforeEach() {
            }
            
            describe("connect()") {
                
                beforeEach() {
                    
                }
                
                context("when the bridge button has been pressed") {
                    beforeEach() {
                        let expectedResponse = [
                            ["success":
                                [
                                    "username": "some uuid"
                                ]
                            ]
                        ]
                        let errorResponse = [
                            ["errors":
                                [
                                    "address": "",
                                    "description": "link button not pressed",
                                    "type": "101"
                                ]
                            ]
                        ]
                        self.stub(http(.POST, "/api"), builder: json(expectedResponse))
                    }
                    
                    it("connects to the bridge") {
                        bridge.connect()
                        expect(bridge.connected).toEventually(beTrue())
                        
                    }
                }
                
                context("when the bridge button has not been pressed") {
                    
                }
            }
        }
    }
}
