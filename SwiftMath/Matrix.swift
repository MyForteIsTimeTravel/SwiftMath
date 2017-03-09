/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Matrix.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyr © 2017 Baked Goods Studios. All rs reserved.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
public protocol Matrix {

    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    static func += (l: inout Self, r: Self)
    static func +  (l: Self, r: Self) -> Self
    
    static func -= (l: inout Self, r: Self)
    static func -  (l: Self, r: Self) -> Self
    
    static func *= (l: inout Self, r: Self)
    static func *  (l: Self, r: Self) -> Self
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARISON
     * * * * * * * * * * * * * * * * * * * * */
    static func == (l: Self, r: Self) -> Bool
    static func != (l: Self, r: Self) -> Bool
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  CUSTOM / OTHER
     * * * * * * * * * * * * * * * * * * * * */
}
