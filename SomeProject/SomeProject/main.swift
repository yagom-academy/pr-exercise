//
//  Icecream.swift
//  SomeProject
//
//  Created by eve on 2023/02/21.
//

import Foundation

var width = 11

/// 아이스크림 그리기
func makeIcecream(height: UInt) {
    if (width < 1 || height < 1) { return }
    
    for _ in 0...height-1 {
        for _ in 0...width-1 {
            print("*", terminator: "")
        }
        print("")
    }
}

/// 막대 바 그리기
func makeBar(height: UInt) {
    if (width < 1 || height < 1) { return }
    
    for _ in 0...height-1 {
        for count in 0...width-1 {
            if(count == (width/2) - 1 || count == (width/2) + 1) {
                print("|", terminator: "")
            } else {
                print(" ", terminator: "")
            }
        }
        print("")
    }
}


/* 아이스크림 만들기 */
makeIcecream(height: 8)
makeBar(height: 4)
print("")
