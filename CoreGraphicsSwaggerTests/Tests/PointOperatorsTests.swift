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

    var positivePoint1: CGPoint!
    var positivePoint2: CGPoint!
    var negativePoint: CGPoint!
    var result: CGPoint!

    override func setUp() {
        super.setUp()

        positivePoint1 = CGPoint(x: drand48(), y: drand48())
        positivePoint2 = CGPoint(x: drand48(), y: drand48())
        negativePoint = CGPoint(x: drand48(), y: drand48())
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testPointAdditiveIdentity() {
        result = positivePoint1 + CGPointZero
        XCTAssertEqual(result, positivePoint1, "The sum of a point and point zero should be the original point")
    }

    func testTwoPointAddition() {
        result = positivePoint1 + positivePoint2
        XCTAssertEqual(result.x, positivePoint1.x + positivePoint2.x, "The x values of the two points should be summed")
        XCTAssertEqual(result.y, positivePoint1.y + positivePoint2.y, "The y values of the two points should be summed")
    }

    func testThreePointAddition() {
        result = positivePoint1 + positivePoint2 + negativePoint
        XCTAssertEqual(result.x, positivePoint1.x + positivePoint2.x + negativePoint.x, "The x values of the three points should be summed")
        XCTAssertEqual(result.y, positivePoint1.y + positivePoint2.y + negativePoint.y, "The y values of the three points should be summed")
    }

    func testPointSubtraction() {
        result = positivePoint1 - positivePoint2
        XCTAssertEqual(result.x, positivePoint1.x - positivePoint2.x, "The x values of the two points should be subtracted")
        XCTAssertEqual(result.y, positivePoint1.y - positivePoint2.y, "The y values of the two points should be subracted")
    }

    func testMixedAdditionAndSubtraction() {
        result = positivePoint1 - positivePoint2 + negativePoint
        XCTAssertEqual(result.x, positivePoint1.x - positivePoint2.x + negativePoint.x, "The x values of the three points should be added and subtracted as specified")
        XCTAssertEqual(result.y, positivePoint1.y - positivePoint2.y + negativePoint.y, "The x values of the three points should be added and subtracted as specified")
    }

    func testPointScalarMultiplication() {
        result = 14.42 * positivePoint1
        XCTAssertEqual(result.x, 14.42 * positivePoint1.x, "The x component should be multiplied by the scalar factor")
        XCTAssertEqual(result.y, 14.42 * positivePoint1.y, "The y component should be multiplied by the scalar factor")

        result = positivePoint1 * 99.99
        XCTAssertEqual(result.x, 99.99 * positivePoint1.x, "The x component should be multiplied by the scalar factor")
        XCTAssertEqual(result.y, 99.99 * positivePoint1.y, "The y component should be multiplied by the scalar factor")
    }

    func testPointNegation() {
        result = -CGPointZero
        XCTAssertEqual(result, CGPointZero, "The negation of point zero is still point zero")

        result = -positivePoint1
        XCTAssertEqual(result.x, -positivePoint1.x, "The x component should be negated")
        XCTAssertEqual(result.y, -positivePoint1.y, "The y component should be negated")

        result = -negativePoint
        XCTAssertEqual(result.x, -negativePoint.x, "The x component should be negated")
        XCTAssertEqual(result.y, -negativePoint.y, "The y component should be negated")
    }
    
    func testAbsoluteSize() {
        result = abs(CGPointZero)
        XCTAssertEqual(result, CGPointZero, "The absolute value of point zero is point zero")

        result = abs(positivePoint1)
        XCTAssertEqual(result, positivePoint1, "The absolute value of point with positive components should be that same point")

        result = abs(negativePoint)
        XCTAssertEqual(result.x, fabs(negativePoint.x), "The absolute value of a negative point should have the absolute value of the original components")
        XCTAssertEqual(result.y, fabs(negativePoint.y), "The absolute value of a negative point should have the absolute value of the original components")
    }

}
