/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Vec2.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyright © 2017 Baked Goods Studios. All rights reserved.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

public final class Mat4 : Matrix {
    private var x1 = 0; private var x2 = 0; private var x3 = 0; private var x4 = 0;
    private var y1 = 0; private var y2 = 0; private var y3 = 0; private var y4 = 0;
    private var z1 = 0; private var z2 = 0; private var z3 = 0; private var z4 = 0;
    private var w1 = 0; private var w2 = 0; private var w3 = 0; private var w4 = 0;
    
    public init () {}
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    public static func += (left: inout Mat4, right: Mat4) {}
    public static func +  (left: Mat4, right: Mat4) -> Mat4 { return Mat4() }
    
    public static func -= (left: inout Mat4, right: Mat4) {}
    public static func -  (left: Mat4, right: Mat4) -> Mat4 { return Mat4() }
    
    public static func *= (left: inout Mat4, right: Mat4) {}
    public static func *  (left: Mat4, right: Mat4) -> Mat4 { return Mat4() }
    
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
