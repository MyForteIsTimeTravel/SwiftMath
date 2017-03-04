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
        x = Vec2(x: 1.0, y: 0.0),
        y = Vec2(x: 0.0, y: 1.0)
    
    public init () {}
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    public static func += (left: inout Mat2, right: Mat2) { left = left + right }
    public static func +  (left: Mat2, right: Mat2) -> Mat2 {
        let result = Mat2()
        result.x = left.x + right.x;
        result.y = left.y + right.y;
        return result
    }
    
    public static func -= (left: inout Mat2, right: Mat2) { left = left - right }
    public static func -  (left: Mat2, right: Mat2) -> Mat2 {
        let result = Mat2()
        result.x = left.x - right.x;
        result.y = left.y - right.y;
        return result
    }
    
    public static func *= (left: inout Mat2, right: Mat2) {}
    public static func *  (left: Mat2, right: Mat2) -> Mat2 {
        let result = Mat2()
        result.x = left.x * right.x;
        result.y = left.y * right.y;
        return result
    }
    
    public static func *  (left: Mat2, right: Vec2) -> Vec2 {
        return Vec2 (
            x: right.x * left.x.x,
            y: right.y * left.y.y
        )
    }
    
    public static func *  (left: Vec2, right: Mat2) -> Vec2 {
        return Vec2 (
            x: left.x * right.x.x,
            y: left.y * right.y.y
        )
    }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARISON
     * * * * * * * * * * * * * * * * * * * * */
    public static func == (left: Mat2, right: Mat2) -> Bool {
        return (left.x == right.x) && (left.y == right.y)
    }
    
    public static func != (left: Mat2, right: Mat2) -> Bool {
        return (left.x != right.x) || (left.y != right.y)
    }
}
