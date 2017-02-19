/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Vec2.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyright © 2017 Baked Goods Studios. All rights reserved.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

public final class Mat4 : Matrix {
    
    // Initialise as Identity matrix
    private var
        x1 = 1, x2 = 0, x3 = 0, x4 = 0,
        y1 = 0, y2 = 1, y3 = 0, y4 = 0,
        z1 = 0, z2 = 0, z3 = 1, z4 = 0,
        w1 = 0, w2 = 0, w3 = 0, w4 = 1;
    
    public init () {}
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    public static func += (left: inout Mat4, right: Mat4) { left = left + right }
    public static func +  (left: Mat4, right: Mat4) -> Mat4 {
        let result = Mat4()
        
        result.x1 = left.x1 + right.x1;
        result.x2 = left.x2 + right.x2;
        result.x3 = left.x3 + right.x3;
        result.x4 = left.x4 + right.x4;
        
        result.y1 = left.y1 + right.y1;
        result.y2 = left.y2 + right.y2;
        result.y3 = left.y3 + right.y3;
        result.y4 = left.y4 + right.y4;
    
        result.z1 = left.z1 + right.z1;
        result.z2 = left.z2 + right.z2;
        result.z3 = left.z3 + right.z3;
        result.z4 = left.z4 + right.z4;
        
        result.w1 = left.w1 + right.w1;
        result.w2 = left.w2 + right.w2;
        result.w3 = left.w3 + right.w3;
        result.w4 = left.w4 + right.w4;
    
        return result
    }
    
    public static func -= (left: inout Mat4, right: Mat4) { left = left - right }
    public static func -  (left: Mat4, right: Mat4) -> Mat4 {
        let result = Mat4()
        
        result.x1 = left.x1 - right.x1;
        result.x2 = left.x2 - right.x2;
        result.x3 = left.x3 - right.x3;
        result.x4 = left.x4 - right.x4;
        
        result.y1 = left.y1 - right.y1;
        result.y2 = left.y2 - right.y2;
        result.y3 = left.y3 - right.y3;
        result.y4 = left.y4 - right.y4;
        
        result.z1 = left.z1 - right.z1;
        result.z2 = left.z2 - right.z2;
        result.z3 = left.z3 - right.z3;
        result.z4 = left.z4 - right.z4;
        
        result.w1 = left.w1 - right.w1;
        result.w2 = left.w2 - right.w2;
        result.w3 = left.w3 - right.w3;
        result.w4 = left.w4 - right.w4;
        
        return result
    }
    
    public static func *= (left: inout Mat4, right: Mat4) {}
    public static func *  (left: Mat4, right: Mat4) -> Mat4 {
        let result = Mat4()
        
        result.x1 = left.x1 * right.x1;
        result.x2 = left.x2 * right.x2;
        result.x3 = left.x3 * right.x3;
        result.x4 = left.x4 * right.x4;
        
        result.y1 = left.y1 * right.y1;
        result.y2 = left.y2 * right.y2;
        result.y3 = left.y3 * right.y3;
        result.y4 = left.y4 * right.y4;
        
        result.z1 = left.z1 * right.z1;
        result.z2 = left.z2 * right.z2;
        result.z3 = left.z3 * right.z3;
        result.z4 = left.z4 * right.z4;
        
        result.w1 = left.w1 * right.w1;
        result.w2 = left.w2 * right.w2;
        result.w3 = left.w3 * right.w3;
        result.w4 = left.w4 * right.w4;
        
        return result }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARISON
     * * * * * * * * * * * * * * * * * * * * */
    public static func == (left: Mat4, right: Mat4) -> Bool {
        return
            ((left.x1 == right.x1) && (left.x2 == right.x2) && (left.x3 == right.x3) && (left.x4 == right.x4)) &&
            ((left.y1 == right.y1) && (left.y2 == right.y2) && (left.y3 == right.y3) && (left.y4 == right.y4)) &&
            ((left.z1 == right.z1) && (left.z2 == right.z2) && (left.z3 == right.z3) && (left.z4 == right.z4)) &&
            ((left.w1 == right.w1) && (left.w2 == right.w2) && (left.w3 == right.w3) && (left.w4 == right.w4))
    }
    
    public static func != (left: Mat4, right: Mat4) -> Bool {
        return
            ((left.x1 != right.x1) || (left.x2 != right.x2) || (left.x3 != right.x3) || (left.x4 != right.x4)) ||
            ((left.y1 != right.y1) || (left.y2 != right.y2) || (left.y3 != right.y3) || (left.y4 != right.y4)) ||
            ((left.z1 != right.z1) || (left.z2 != right.z2) || (left.z3 != right.z3) || (left.z4 != right.z4)) ||
            ((left.w1 != right.w1) || (left.w2 != right.w2) || (left.w3 != right.w3) || (left.w4 != right.w4))
    }
}
