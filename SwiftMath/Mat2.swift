//
//  Mat2.swift
//  SwiftMath
//
//  Created by Ryan Needham on 19/02/2017.
//  Copyright © 2017 Baked Goods Studios. All rights reserved.
//
public final class Mat2 : Matrix {
    
    // Initialise as Identity matrix
    private var
    x1: Float = 1.0, x2: Float = 0.0,
    y1: Float = 0.0, y2: Float = 1.0;
    
    public init () {}
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    public static func += (left: inout Mat2, right: Mat2) { left = left + right }
    public static func +  (left: Mat2, right: Mat2) -> Mat2 {
        let result = Mat2()
        
        result.x1 = left.x1 + right.x1;
        result.x2 = left.x2 + right.x2;
        
        result.y1 = left.y1 + right.y1;
        result.y2 = left.y2 + right.y2;
        
        return result
    }
    
    public static func -= (left: inout Mat2, right: Mat2) { left = left - right }
    public static func -  (left: Mat2, right: Mat2) -> Mat2 {
        let result = Mat2()
        
        result.x1 = left.x1 - right.x1;
        result.x2 = left.x2 - right.x2;
        
        result.y1 = left.y1 - right.y1;
        result.y2 = left.y2 - right.y2;
        
        return result
    }
    
    public static func *= (left: inout Mat2, right: Mat2) {}
    public static func *  (left: Mat2, right: Mat2) -> Mat2 {
        let result = Mat2()
        
        result.x1 = left.x1 * right.x1;
        result.x2 = left.x2 * right.x2;
        
        result.y1 = left.y1 * right.y1;
        result.y2 = left.y2 * right.y2;
        
        return result
    }
    
    public static func *  (left: Mat2, right: Vec2) -> Vec2 {
        return Vec2 (
            x: right.x * left.x1,
            y: right.y * left.y2
        )
    }
    
    public static func *  (left: Vec2, right: Mat2) -> Vec2 {
        return Vec2 (
            x: left.x * right.x1,
            y: left.y * right.y2
        )
    }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARISON
     * * * * * * * * * * * * * * * * * * * * */
    public static func == (left: Mat2, right: Mat2) -> Bool {
        return
            ((left.x1 == right.x1) && (left.x2 == right.x2)) &&
            ((left.y1 == right.y1) && (left.y2 == right.y2))
    }
    
    public static func != (left: Mat2, right: Mat2) -> Bool {
        return
            ((left.x1 != right.x1) || (left.x2 != right.x2)) ||
            ((left.y1 != right.y1) || (left.y2 != right.y2))

    }
}
