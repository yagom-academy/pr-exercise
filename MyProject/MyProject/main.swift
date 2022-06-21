//
//  main.swift
//  MyProject
//
//  Created by 차종한 on 2022/06/21.
//

import Foundation

//print("Hello, World!")
//
//func plusTwo(x : Int) -> Int {
//    return x + 2
//}
//print(plusTwo(x: 2))
//
//for count in 0...4{
//    print(count, "번 째 무야~호!!!!")
//}


// 무야호!!를 반복 출력하는 함수
func printMuYaHo(){
    for count in 0...4{
        print(count, "번 째 무야호!!")
    }
}
printMuYaHo()


func gugu(dan : Int) {
    for i in 1...9 {
        print(dan, "x", i, "=", dan * i)
    }
}
gugu(dan: 2)

for count in 1...3 {
    print("이번엔 \(count) 번째 무야호!!")
}
