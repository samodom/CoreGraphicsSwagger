//
//  TestingHelpers.swift
//  CoreGraphicsSwagger
//
//  Created by Sam Odom on 11/8/14.
//  Copyright (c) 2014 Swagger Soft. All rights reserved.
//

import Foundation

internal func PositiveRandomDouble() -> Double {
    var double = drand48()
    while double == 0.0 {
        double = drand48()
    }

    return fabs(double)
}
