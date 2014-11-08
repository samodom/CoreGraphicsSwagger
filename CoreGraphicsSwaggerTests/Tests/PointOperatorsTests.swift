//
//  PointOperatorsTests.swift
//  CoreGraphicsSwagger
//
//  Created by Sam Odom on 11/8/14.
//  Copyright (c) 2014 Swagger Soft. All rights reserved.
//

import CoreGraphics
import XCTest

class PointOperatorsTests: XCTestCase {

    var point1: CGPoint!
    var point2: CGPoint!
    var point3: CGPoint!

    override func setUp() {
        super.setUp()

        point1 = CGPoint(x: drand48(), y: drand48())
        point2 = CGPoint(x: drand48(), y: drand48())
        point3 = CGPoint(x: drand48(), y: drand48())
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testTwoPointAddition() {
        let sum = point1 + point2
        XCTAssertEqual(sum.x, point1.x + point2.x, "The x values of the two points should be summed")
        XCTAssertEqual(sum.y, point1.y + point2.y, "The y values of the two points should be summed")
    }

    func testThreePointAddition() {
        let sum = point1 + point2 + point3
        XCTAssertEqual(sum.x, point1.x + point2.x + point3.x, "The x values of the three points should be summed")
        XCTAssertEqual(sum.y, point1.y + point2.y + point3.y, "The y values of the three points should be summed")
    }

    func testPointSubtraction() {
        let difference = point1 - point2
        XCTAssertEqual(difference.x, point1.x - point2.x, "The x values of the two points should be subtracted")
        XCTAssertEqual(difference.y, point1.y - point2.y, "The y values of the two points should be subracted")
    }

    func testMixedAdditionAndSubtraction() {
        let result = point1 - point2 + point3
        XCTAssertEqual(result.x, point1.x - point2.x + point3.x, "The x values of the three points should be added and subtracted as specified")
        XCTAssertEqual(result.y, point1.y - point2.y + point3.y, "The x values of the three points should be added and subtracted as specified")
    }

    func testPointScalarMultiplication() {
        var result = 14.42 * point1
        XCTAssertEqual(result.x, 14.42 * point1.x, "The x component should be multiplied by the scalar factor")
        XCTAssertEqual(result.y, 14.42 * point1.y, "The y component should be multiplied by the scalar factor")

        result = point1 * 99.99
        XCTAssertEqual(result.x, 99.99 * point1.x, "The x component should be multiplied by the scalar factor")
        XCTAssertEqual(result.y, 99.99 * point1.y, "The y component should be multiplied by the scalar factor")
    }

}
