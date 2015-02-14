//
//  LineDashTests.swift
//  CoreGraphicsSwagger
//
//  Created by Sam Odom on 2/14/15.
//  Copyright (c) 2015 Swagger Soft. All rights reserved.
//

import UIKit
import XCTest

class LineDashTests: XCTestCase {

    var phase = CGLineDashPhase(2)
    let length1 = CGLineDashPatternLength(2)
    let length2 = CGLineDashPatternLength(4)
    let length3 = CGLineDashPatternLength(14.42)
    var pattern: CGLineDashPattern!
    var lineDash: CGLineDash!

    override func setUp() {
        super.setUp()

        pattern = [length1, length2, length3]
        lineDash = CGLineDash(phase: 1, pattern: pattern)
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testLineDashPhase() {
        XCTAssertEqual(lineDash.phase, 1, "The line dash should have a phase value")
    }

    func testLineDashHasPattern() {
        XCTAssertEqual(lineDash.pattern[0], length1, "The line dash should have a pattern with lengths")
        XCTAssertEqual(lineDash.pattern[1], length2, "The line dash should have a pattern with lengths")
        XCTAssertEqual(lineDash.pattern[2], length3, "The line dash should have a pattern with lengths")
    }

}
