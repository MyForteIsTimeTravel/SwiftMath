//
//  SwiftMathTests.swift
//  SwiftMathTests
//
//  Created by user on 14/02/2017.
//  Copyright © 2017 Baked Goods Studios. All rights reserved.
//

import XCTest
import GLKit
@testable import SwiftMath

class SwiftMathTests: XCTestCase {
    
    override func setUp() {
        super.setUp()

    }
    
    override func tearDown() {

        super.tearDown()
    }

    /** 
     *  dot product test
     */
    func testDotProduct () {
        // Vector 2D
        XCTAssert (
            Vec2(v: 1.48).dot(other: Vec2(v: 4.58)) ==
            GLKVector2DotProduct(GLKVector2Make(1.48, 1.48), GLKVector2Make(4.58, 4.58))
        )
    
        // Vector 3D
        XCTAssert (
            Vec3(v: 1.48).dot(other: Vec3(v: 4.58)) ==
            GLKVector3DotProduct(GLKVector3Make(1.48, 1.48, 1.48), GLKVector3Make(4.58, 4.58, 4.58))
        )
        
        // Vector 4D
        XCTAssert (
            Vec4(v: 1.48).dot(other: Vec4(v: 4.58)) ==
            GLKVector4DotProduct(GLKVector4Make(1.48, 1.48, 1.48, 1.48), GLKVector4Make(4.58, 4.58, 4.58, 4.58))
        )
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
