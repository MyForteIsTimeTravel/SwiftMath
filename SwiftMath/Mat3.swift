//
//  Mat3.swift
//  SwiftMath
//
//  Created by Ryan Needham on 19/02/2017.
//  Copyright © 2017 Baked Goods Studios. All rights reserved.
//
public final class Mat3 : Matrix {
    
    // Initialise as Identity matrix
    private var
    x1: Float = 1.0, x2: Float = 0.0, x3: Float = 0.0,
    y1: Float = 0.0, y2: Float = 1.0, y3: Float = 0.0,
    z1: Float = 0.0, z2: Float = 0.0, z3: Float = 1.0;
    
    public init () {}
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    public static func += (left: inout Mat3, right: Mat3) { left = left + right }
    public static func +  (left: Mat3, right: Mat3) -> Mat3 {
        let result = Mat3()
        
        result.x1 = left.x1 + right.x1;
        result.x2 = left.x2 + right.x2;
        result.x3 = left.x3 + right.x3;
        
        result.y1 = left.y1 + right.y1;
        result.y2 = left.y2 + right.y2;
        result.y3 = left.y3 + right.y3;
        
        result.z1 = left.z1 + right.z1;
        result.z2 = left.z2 + right.z2;
        result.z3 = left.z3 + right.z3;
        
        return result
    }
    
    public static func -= (left: inout Mat3, right: Mat3) { left = left - right }
    public static func -  (left: Mat3, right: Mat3) -> Mat3 {
        let result = Mat3()
        
        result.x1 = left.x1 - right.x1;
        result.x2 = left.x2 - right.x2;
        result.x3 = left.x3 - right.x3;
        
        result.y1 = left.y1 - right.y1;
        result.y2 = left.y2 - right.y2;
        result.y3 = left.y3 - right.y3;
        
        result.z1 = left.z1 - right.z1;
        result.z2 = left.z2 - right.z2;
        result.z3 = left.z3 - right.z3;
        
        return result
    }
    
    public static func *= (left: inout Mat3, right: Mat3) {}
    public static func *  (left: Mat3, right: Mat3) -> Mat3 {
        let result = Mat3()
        
        result.x1 = left.x1 * right.x1;
        result.x2 = left.x2 * right.x2;
        result.x3 = left.x3 * right.x3;
        
        result.y1 = left.y1 * right.y1;
        result.y2 = left.y2 * right.y2;
        result.y3 = left.y3 * right.y3;
        
        result.z1 = left.z1 * right.z1;
        result.z2 = left.z2 * right.z2;
        result.z3 = left.z3 * right.z3;

        return result
    }
    
    public static func *  (left: Mat3, right: Vec3) -> Vec3 {
        return Vec3 (
            x: right.x * left.x1,
            y: right.y * left.y2,
            z: right.z * left.z3
        )
    }
    
    public static func *  (left: Vec3, right: Mat3) -> Vec3 {
        return Vec3 (
            x: left.x * right.x1,
            y: left.y * right.y2,
            z: left.z * right.z3
        )
    }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARISON
     * * * * * * * * * * * * * * * * * * * * */
    public static func == (left: Mat3, right: Mat3) -> Bool {
        return
            ((left.x1 == right.x1) && (left.x2 == right.x2) && (left.x3 == right.x3)) &&
            ((left.y1 == right.y1) && (left.y2 == right.y2) && (left.y3 == right.y3)) &&
            ((left.z1 == right.z1) && (left.z2 == right.z2) && (left.z3 == right.z3))
    }
    
    public static func != (left: Mat3, right: Mat3) -> Bool {
        return
            ((left.x1 != right.x1) || (left.x2 != right.x2) || (left.x3 != right.x3)) ||
            ((left.y1 != right.y1) || (left.y2 != right.y2) || (left.y3 != right.y3)) ||
            ((left.z1 != right.z1) || (left.z2 != right.z2) || (left.z3 != right.z3))
    }
}
