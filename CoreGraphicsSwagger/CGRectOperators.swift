//
//  CGRectOperators.swift
//  CoreGraphicsSwagger
//
//  Created by Sam Odom on 11/8/14.
//  Copyright (c) 2014 Swagger Soft. All rights reserved.
//

import CoreGraphics

/**
  Simple union of two rects
*/
public func +(lhs: CGRect, rhs: CGRect) -> CGRect {
    return lhs.rectByUnion(rhs)
}

/**
  Simple test for point containment in a rect
*/
public func <(point: CGPoint, rect: CGRect) -> Bool {
    return rect.contains(point)
}

public func >(rect: CGRect, point: CGPoint) -> Bool {
    return point < rect
}

/**
  Simple test for rect containment in a rect
*/
public func <(lhs: CGRect, rhs: CGRect) -> Bool {
    return rhs.contains(lhs)
}

public func >(lhs: CGRect, rhs: CGRect) -> Bool {
    return rhs < lhs
}
