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
        x = Vec3(x: 1.0, y: 0.0, z: 0.0),
        y = Vec3(x: 0.0, y: 1.0, z: 0.0),
        z = Vec3(x: 0.0, y: 0.0, z: 1.0);
    
    public init () {}
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    public static func += (left: inout Mat3, right: Mat3) { left = left + right }
    public static func +  (left: Mat3, right: Mat3) -> Mat3 {
        let result = Mat3()
        result.x = left.x + right.x;
        result.y = left.y + right.y;
        result.z = left.z + right.z;
        return result
    }
    
    public static func -= (left: inout Mat3, right: Mat3) { left = left - right }
    public static func -  (left: Mat3, right: Mat3) -> Mat3 {
        let result = Mat3()
        result.x = left.x - right.x;
        result.y = left.y - right.y;
        result.z = left.z - right.z;
        return result
    }
    
    public static func *= (left: inout Mat3, right: Mat3) {}
    public static func *  (left: Mat3, right: Mat3) -> Mat3 {
        let result = Mat3()
        result.x = left.x * right.x;
        result.y = left.y * right.y;
        result.z = left.z * right.z;
        return result
    }
    
    public static func *  (left: Mat3, right: Vec3) -> Vec3 {
        return Vec3 (
            x: right.x * left.x.x,
            y: right.y * left.y.y,
            z: right.z * left.z.z
        )
    }
    
    public static func *  (left: Vec3, right: Mat3) -> Vec3 {
        return Vec3 (
            x: left.x * right.x.x,
            y: left.y * right.y.y,
            z: left.z * right.z.z
        )
    }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARISON
     * * * * * * * * * * * * * * * * * * * * */
    public static func == (left: Mat3, right: Mat3) -> Bool {
        return (left.x == right.x) && (left.y == right.y) && (left.z == right.z)
    }
    
    public static func != (left: Mat3, right: Mat3) -> Bool {
        return (left.x != right.x) || (left.y != right.y) || (left.z != right.z)
    }
}
