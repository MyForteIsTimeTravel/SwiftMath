/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Vec2.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyright © 2017 Baked Goods Studios. All rights reserved.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

public final class Mat4 : Matrix {
    
    // Initialise as Identity matrix
    private var
        x = Vec4(x: 1.0, y: 0.0, z: 0.0, w: 0.0),
        y = Vec4(x: 0.0, y: 1.0, z: 0.0, w: 0.0),
        z = Vec4(x: 0.0, y: 0.0, z: 1.0, w: 0.0),
        w = Vec4(x: 0.0, y: 0.0, z: 0.0, w: 1.0);
    
    public init () {}
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    public static func += (left: inout Mat4, right: Mat4) { left = left + right }
    public static func +  (left: Mat4, right: Mat4) -> Mat4 {
        let result = Mat4()
        result.x = left.x + right.x;
        result.y = left.y + right.y;
        result.z = left.z + right.z;
        result.w = left.w + right.w;
        return result
    }
    
    public static func -= (left: inout Mat4, right: Mat4) { left = left - right }
    public static func -  (left: Mat4, right: Mat4) -> Mat4 {
        let result = Mat4()
        result.x = left.x - right.x;
        result.y = left.y - right.y;
        result.z = left.z - right.z;
        result.w = left.w - right.w;
        return result
    }
    
    public static func *= (left: inout Mat4, right: Mat4) {}
    public static func *  (left: Mat4, right: Mat4) -> Mat4 {
        let result = Mat4()
        result.x = left.x * right.x;
        result.y = left.y * right.y;
        result.z = left.z * right.z;
        result.w = left.w * right.w;
        return result
    }
    
    public static func *  (left: Mat4, right: Vec4) -> Vec4 {
        return Vec4 (
            x: right.x * left.x.x,
            y: right.y * left.y.y,
            z: right.z * left.z.z,
            w: right.w * left.w.w
        )
    }
    
    public static func *  (left: Vec4, right: Mat4) -> Vec4 {
        return Vec4 (
            x: left.x * right.x.x,
            y: left.y * right.y.y,
            z: left.z * right.z.z,
            w: left.w * right.w.w
        )
    }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARISON
     * * * * * * * * * * * * * * * * * * * * */
    public static func == (left: Mat4, right: Mat4) -> Bool {
        return
            (left.x == right.x) &&
            (left.y == right.y) &&
            (left.z == right.z) &&
            (left.w == right.w)
    }
    
    public static func != (left: Mat4, right: Mat4) -> Bool {
        return
            (left.x != right.x) ||
            (left.y != right.y) ||
            (left.z != right.z) ||
            (left.w != right.w)
    }
}
