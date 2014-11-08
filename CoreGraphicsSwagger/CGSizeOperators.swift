//
//  CGSizeOperators.swift
//  CoreGraphicsSwagger
//
//  Created by Sam Odom on 11/8/14.
//  Copyright (c) 2014 Swagger Soft. All rights reserved.
//

import CoreGraphics

/**
  Simple component-wise addition of two sizes
*/
public func +(lhs: CGSize, rhs: CGSize) -> CGSize {
    return CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
}

/**
  Simple component-wise subtraction of two sizes
*/
public func -(lhs: CGSize, rhs: CGSize) -> CGSize {
    return CGSize(width: lhs.width - rhs.width, height: lhs.height - rhs.height)
}

/**
  Simple component-wise scalar multiplication of a size
*/
public func *(lhs: CGSize, rhs: CGFloat) -> CGSize {
    return CGSize(width: lhs.width * rhs, height: lhs.height * rhs)
}

public func *(lhs: CGFloat, rhs: CGSize) -> CGSize {
    return rhs * lhs
}

/**
  Simple component-wise negation of a size
*/
public prefix func -(size: CGSize) -> CGSize {
    return CGSize(width: -size.width, height: -size.height)
}

/**
  Simple component-wise absolute value of a size
*/
public func abs(size: CGSize) -> CGSize {
    return CGSize(width: fabs(size.width), height: fabs(size.height))
}
