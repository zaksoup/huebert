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

class HueBridgeTests: QuickSpec {
    override func spec() {
        describe("HueBridge") {
            let bridge = HueBridge()
            it("tells me I am awesome!") {
                expect(bridge.zak).to(equal("awesome"))
            }
        }
    }
}
