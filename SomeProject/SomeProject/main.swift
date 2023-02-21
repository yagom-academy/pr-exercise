//
//  main.swift
//  SomeProject
//
//  Created by eve on 2023/02/21.
//

import Foundation

var row = 11

func makeIcecream(column: Int) {
    for _ in 0...column-1 {
        for _ in 1...row {
            print("*", terminator: "")
        }
        print("")
    }
}

func makeBar(column: Int) {
    for _ in 0...column-1 {
        for count in 0...row-1 {
            if(count == (row/2) - 1 || count == (row/2) + 1) {
                print("|", terminator: "")
            } else {
                print(" ", terminator: "")
            }
        }
        print("")
    }
}

/* 아이스크림 만들기 */
makeIcecream(column: 8)
makeBar(column: 4)
