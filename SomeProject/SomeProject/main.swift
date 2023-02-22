//
//  main.swift
//  SomeProject
//
//  Created by eve on 2023/02/22.
//

import Foundation

/// 막대 그리기
func makeStick(height: UInt, bodyWidth: UInt) {
    if (height < 1 || bodyWidth < 1) { return }
    
    for _ in 0...height-1 {
        if bodyWidth > 1 {
            print(" ", terminator: "")
            for count in 0...bodyWidth-1 {
                if(count == (bodyWidth/2) - 1 || count == (bodyWidth/2) + 1) {
                    print("|", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print("")
        }
    }
}

/// 몸통 모양 그리기
func makeBodyShape(body: String, topping: String?) -> String {
    if let topping {
        return topping + body + topping
    } else {
        return body
    }
}

/// 몸통 그리기
func makeBody(height: UInt, shape: String) {
    if (height < 1) { return }
    
    for _ in 0...height-1 {
        print(" \(shape)")
    }
}

/// 빼빼로 그리기
func makePepero(bodyHeight: UInt, body: String, topping: String? = nil, stickHeight: UInt) {
    let shape = makeBodyShape(body: body, topping: topping)
    if shape.count > 0 {
        makeBody(height: bodyHeight, shape: shape)
        makeStick(height: stickHeight, bodyWidth: UInt(shape.count))
        print("")
    }
}


/* 빼빼로 만들기 */
makePepero(bodyHeight: 10, body: "***", stickHeight: 4)
makePepero(bodyHeight: 12, body: "***", topping: "&", stickHeight: 4)
makePepero(bodyHeight: 12, body: "***", topping: "#", stickHeight: 6)
makePepero(bodyHeight: 6, body: " |0|", stickHeight: 4)

makePepero(bodyHeight: 9, body: "*****", stickHeight: 3)
makePepero(bodyHeight: 12, body: "***", topping: "O", stickHeight: 2)
makePepero(bodyHeight: 8, body: "@@@", stickHeight: 4)
makePepero(bodyHeight: 10, body: " |@@@|", stickHeight: 0)
