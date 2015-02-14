//
//  RectOperatorTests.swift
//  CoreGraphicsSwagger
//
//  Created by Sam Odom on 11/8/14.
//  Copyright (c) 2014 Swagger Soft. All rights reserved.
//

import CoreGraphics
import XCTest

class RectOperatorTests: XCTestCase {

    var positiveRect1: CGRect!
    var positiveRect2: CGRect!
    var negativeRect: CGRect!
    var straddleRect: CGRect!
    var result: CGRect!

    override func setUp() {
        super.setUp()

        var point = CGPoint(x: PositiveRandomDouble(), y: PositiveRandomDouble())
        var size = CGSize(width: PositiveRandomDouble(), height: PositiveRandomDouble())
        positiveRect1 = CGRect(origin: point, size: size)

        point = CGPoint(x: PositiveRandomDouble(), y: PositiveRandomDouble())
        size = CGSize(width: PositiveRandomDouble(), height: PositiveRandomDouble())
        positiveRect2 = CGRect(origin: point, size: size)

        point = CGPoint(x: -PositiveRandomDouble(), y: -PositiveRandomDouble())
        size = CGSize(width: -PositiveRandomDouble(), height: -PositiveRandomDouble())
        negativeRect = CGRect(origin: point, size: size)

        point = CGPoint(x: -10.0, y: -10.0)
        size = CGSize(width: 20.0, height: 20.0)
        straddleRect = CGRect(origin: point, size: size)
    }

    override func tearDown() {
        super.tearDown()
    }

    //  MARK: Unions

    func testNullRectUnion() {
        result = positiveRect1 + CGRectNull
        XCTAssertEqual(result, positiveRect1, "The union of a null rect and a rect is the non-null rect")
    }

    func testRectUnionIdentity() {
        result = positiveRect1 + CGRectZero
        XCTAssertEqual(result, CGRectUnion(positiveRect1, CGRectZero), "The plus operator should provide the union of two rects")
    }

    func testRectWithSelfUnion() {
        result = positiveRect1 + positiveRect1
        XCTAssertEqual(result, positiveRect1, "The union of a rect and itself is the rect")
    }

    func testPositiveRectUnion() {
        result = positiveRect1 + positiveRect2
        XCTAssertEqual(result, CGRectUnion(positiveRect1, positiveRect2), "The plus operator should provide the union of two rects")
    }

    func testNegativeAndPositiveRectUnion() {
        result = negativeRect + positiveRect1
        XCTAssertEqual(result, CGRectUnion(negativeRect, positiveRect1), "The plus operator should provide the union of two rects")
    }

    func testPositiveAndStraddleRectUnion() {
        result = straddleRect + positiveRect1
        XCTAssertEqual(result, CGRectUnion(straddleRect, positiveRect1), "The plus operator should provide the union of two rects")
    }

    //  MARK: Membership

    func testPointInRect() {
        let point = CGPoint(x: positiveRect1.midX, y: positiveRect1.midY)
        var inRect = point < positiveRect1
        XCTAssertTrue(inRect, "The less-than operator should test whether or not a point is in a rect")

        inRect = positiveRect1 > point
        XCTAssertTrue(inRect, "The greater-than operator should test whether or not a point is in a rect")
    }

    func testPointNotInRect() {
        XCTAssertFalse(CGPointZero < positiveRect1, "The less-than operator should test whether or not a point is in a rect")
        XCTAssertFalse(positiveRect1 > CGPointZero, "The greater-than operator should test whether or not a point is in a rect")
    }

    func testRectInRect() {
        positiveRect1 = CGRect(x: 10, y: 10, width: 200, height: 200)
        positiveRect2 = CGRect(x: 100, y: 100, width: 20, height: 20)
        var inRect = positiveRect2 < positiveRect1
        XCTAssertTrue(inRect, "The less-than operator should test whether or not a rect is in a rect")

        inRect = positiveRect1 > positiveRect2
        XCTAssertTrue(inRect, "The greater-than operator should test whether or not a point is in a rect")
    }

    func testRectNotInRect() {
        positiveRect1 = CGRect(x: 10, y: 10, width: 200, height: 200)
        positiveRect2 = CGRect(x: 5, y: 5, width: 2, height: 2)
        var inRect = positiveRect2 < positiveRect1
        XCTAssertFalse(inRect, "The less-than operator should test whether or not a rect is in a rect")

        inRect = positiveRect1 > positiveRect2
        XCTAssertFalse(inRect, "The greater-than operator should test whether or not a point is in a rect")
    }

}
