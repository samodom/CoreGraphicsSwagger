//
//  CGLineDash.swift
//  CoreGraphicsSwagger
//
//  Created by Sam Odom on 2/14/15.
//  Copyright (c) 2015 Swagger Soft. All rights reserved.
//

import CoreGraphics

/**
    Type alias for a line dash's phase.
*/
public typealias CGLineDashPhase = CGFloat

/**
    Type alias for a single length in a line dash pattern.
*/
public typealias CGLineDashPatternLength = CGFloat

/**
    Type alias for a line dash pattern.
*/
public typealias CGLineDashPattern = [CGLineDashPatternLength]


/**
    Convenience type for a line dash used in CoreGraphics line stroking.
*/
public struct CGLineDash {

    /**
        The phase of the line dash pattern as defined in the CoreGraphics documentation.
    */
    public let phase: CGLineDashPhase

    /**
        The line dash pattern as defined in the CoreGraphics documentation.
    */
    public let pattern: CGLineDashPattern

    public init(phase: CGLineDashPhase, pattern: CGLineDashPattern) {
        self.phase = phase
        self.pattern = pattern
    }

}
