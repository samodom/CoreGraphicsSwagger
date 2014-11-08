//
//  SizeOperatorsTests.swift
//  CoreGraphicsSwagger
//
//  Created by Sam Odom on 11/8/14.
//  Copyright (c) 2014 Swagger Soft. All rights reserved.
//

import CoreGraphics
import XCTest

class SizeOperatorsTests: XCTestCase {

    var positiveSize1: CGSize!
    var positiveSize2: CGSize!
    var negativeSize: CGSize!
    var result: CGSize!

    override func setUp() {
        super.setUp()

        positiveSize1 = CGSize(width: positiveRandomDouble(), height: positiveRandomDouble())
        positiveSize2 = CGSize(width: positiveRandomDouble(), height: positiveRandomDouble())
        negativeSize = CGSize(width: -positiveRandomDouble(), height: -positiveRandomDouble())
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testSizeAdditiveIdentity() {
        result = positiveSize1 + CGSizeZero
        XCTAssertEqual(result, positiveSize1, "The sum of a size and size zero should be the original size")
    }

    func testPositiveSizeAddition() {
        result = positiveSize1 + positiveSize2
        XCTAssertEqual(result.width, positiveSize1.width + positiveSize2.width, "The width of the sum should equal the sum of the widths of the sizes")
        XCTAssertEqual(result.height, positiveSize1.height + positiveSize2.height, "The height of the sum should equal the sum of the heights of the sizes")
    }

    func testNegativeSizeAddition() {
        result = positiveSize1 + negativeSize
        XCTAssertEqual(result.width, positiveSize1.width + negativeSize.width, "The width of the sum should equal the sum of the widths of the sizes")
        XCTAssertEqual(result.height, positiveSize1.height + negativeSize.height, "The height of the sum should equal the sum of the heights of the sizes")
    }

    func testPositiveSizeSubtraction() {
        result = positiveSize1 - positiveSize2
        XCTAssertEqual(result.width, positiveSize1.width - positiveSize2.width, "The width of the difference should equal the difference of the widths of the sizes")
        XCTAssertEqual(result.height, positiveSize1.height - positiveSize2.height, "The height of the difference should equal the difference of the heights of the sizes")
    }

    func testNegativeSizeSubtraction() {
        result = positiveSize1 - negativeSize
        XCTAssertEqual(result.width, positiveSize1.width - negativeSize.width, "The width of the difference should equal the difference of the widths of the sizes")
        XCTAssertEqual(result.height, positiveSize1.height - negativeSize.height, "The height of the difference should equal the difference of the heights of the sizes")
    }

    func testSizeScalarMultiplication() {
        result = 14.42 * positiveSize1
        XCTAssertEqual(result.width, 14.42 * positiveSize1.width, "The width component should be multiplied by the scalar factor")
        XCTAssertEqual(result.height, 14.42 * positiveSize1.height, "The height component should be multiplied by the scalar factor")

        result = positiveSize1 * 99.99
        XCTAssertEqual(result.width, 99.99 * positiveSize1.width, "The width component should be multiplied by the scalar factor")
        XCTAssertEqual(result.height, 99.99 * positiveSize1.height, "The height component should be multiplied by the scalar factor")
    }

    func testSizeNegation() {
        result = -CGSizeZero
        XCTAssertEqual(result, CGSizeZero, "The negation of size zero is still size zero")

        result = -positiveSize1
        XCTAssertEqual(result.width, -positiveSize1.width, "The width should be negated")
        XCTAssertEqual(result.height, -positiveSize1.height, "The height should be negated")

        result = -negativeSize
        XCTAssertEqual(result.width, -negativeSize.width, "The width should be negated")
        XCTAssertEqual(result.height, -negativeSize.height, "The height should be negated")
    }

    func testAbsoluteSize() {
        result = abs(CGSizeZero)
        XCTAssertEqual(result, CGSizeZero, "The absolute value of size zero is size zero")

        result = abs(positiveSize1)
        XCTAssertEqual(result, positiveSize1, "The absolute value of a positive size should be that same size")

        result = abs(negativeSize)
        XCTAssertEqual(result.width, fabs(negativeSize.width), "The absolute value of a negative size should have the absolute value of the width")
        XCTAssertEqual(result.height, fabs(negativeSize.height), "The absolute value of a negative size should have the absolute value of the height")
    }

}

private func positiveRandomDouble() -> Double {
    var double = drand48()
    while double == 0.0 {
        double = drand48()
    }

    return fabs(double)
}
