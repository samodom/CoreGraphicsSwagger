//
//  CGPointOperators.swift
//  CoreGraphicsSwagger
//
//  Created by Sam Odom on 11/8/14.
//  Copyright (c) 2014 Swagger Soft. All rights reserved.
//

import CoreGraphics

/**
  Simple component-wise addition of two points
*/
public func +(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
}

/**
  Simple component-wise subtraction of two points
*/
public func -(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
}

/**
  Simple component-wise scalar multiplication of a point
*/
public func *(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
    return CGPoint(x: lhs.x * rhs, y: lhs.y * rhs)
}

public func *(lhs: CGFloat, rhs: CGPoint) -> CGPoint {
    return rhs * lhs
}

/**
  Simple component-wise negation of a point
*/
public prefix func -(point: CGPoint) -> CGPoint {
    return CGPoint(x: -point.x, y: -point.y)
}

/**
  Simple component-wise absolute value of a point
*/
public func abs(point: CGPoint) -> CGPoint {
    return CGPoint(x: fabs(point.x), y: fabs(point.y))
}
