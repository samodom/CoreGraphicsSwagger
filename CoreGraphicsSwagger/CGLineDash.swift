//
//  CGLineDash.swift
//  CoreGraphicsSwagger
//
//  Created by Sam Odom on 2/14/15.
//  Copyright (c) 2015 Swagger Soft. All rights reserved.
//

import CoreGraphics

public typealias CGLineDashPhase = CGFloat
public typealias CGLineDashPatternLength = CGFloat
public typealias CGLineDashPattern = [CGLineDashPatternLength]

public struct CGLineDash {
    public let phase: CGLineDashPhase
    public let pattern: CGLineDashPattern
}
