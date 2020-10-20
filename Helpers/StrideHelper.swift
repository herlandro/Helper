//
//  StrideHelper.swift
//  Helper
//
//  Created by Herlandro Hermogenes on 20/10/2020.
//

import Foundation

struct StrideHelper {
    static func stride() {
        
        
        //        12345
        //         2345
        //          345
        //           45
        //            5
        //            5
        //           45
        //          345
        //         2345
        //        12345
        
        for i in 1...5{
            for _ in 1...i{
                print(terminator : " ")
            }
            for j in Swift.stride(from: i, to: 6, by: 1){
                print(j , terminator : "")
            }
            
            print(" ")
        }
        for i in Swift.stride(from: 5, to: 0, by: -1)
        {
            for _ in 1...i{
                print(terminator : " ")
            }
            for j in Swift.stride(from: i, to: 6, by: 1){
                print(j,terminator : "")
            }
            print(" ")
        }
        
        
        //        1 2 3 4 5
        //         2 3 4 5
        //          3 4 5
        //           4 5
        //            5
        //            5
        //           4 5
        //          3 4 5
        //         2 3 4 5
        //        1 2 3 4 5
        
        for i in 1...5{
            for _ in 0...i{
                print(terminator : " ")
            }
            for j in Swift.stride(from: i, to: 6, by: 1){
                print(j , terminator : " ")
            }
            
            print(" ")
        }
        
        for i in Swift.stride(from: 6, to: 1, by: -1){
            for _ in 1...i{
                print(terminator : " ")
            }
            for j in Swift.stride(from: i-1, to: 6, by: 1){
                print(j , terminator : " ")
            }
            
            print(" ")
        }
    }
}
