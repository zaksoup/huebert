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
                stub(http(.GET, "/zak"), builder: json(["awesome": false]))
            }
            
            it("mocks stuff") {
                bridge.getZak({
                   println("thing")
                })
                    expect(bridge.zak).toEventually(beTrue())
            }
        }
    }
}
