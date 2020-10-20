//
//  ArrayHelper.swift
//  Helper
//
//  Created by Herlandro Hermogenes on 20/10/2020.
//

import Foundation



struct ArrayHelper {
    
    /// Remove elements using indexes array
    static func removeElementsUsingIndexesArray() {
        
        var array1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
        let array2 = [3, 5, 8, 12]
        
        array1 = array1.enumerated()
            .filter { !array2.contains($0.offset) }
            .map { $0.element }

        print(array1)
        ///result: [0, 1, 2, 4, 6, 7, 9, 10, 11]
    }
    
    /// Remove elements using element value of another array by Filter
    static func removeElementsUsingElementsValueOfAnotherArrayByFilter(){
        var array1 = ["a", "b", "c", "d", "e"]
        let array2 = ["a", "c", "d"]
        
        array1 = array1.filter { !array2.contains($0) }
        
        print(array1)
        /// result: ["b", "c", "d", "f", "i"]
    }
    
    /// Remove elements using element value of another array by Set subtracting
    static func removeElementsUsingElementsValueOfAnotherArrayBySetSubtracting() {
        var array1 = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]
        let array2 = ["a", "e", "g", "h"]
        
        array1 = Array(Set(array1).subtracting(array2))
        
        print(array1)
        /// result: ["b", "c", "d", "f", "i"]
    }
    
    static func removeElementsUsingElementsValueOfAnotherArrayBySetSubtract() {
        let array1 = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]
        let array2 = ["a", "e", "g", "h"]
        var setA = Set(array1)
        let setB = Set(array2)
        
        setA.subtract(setB)
        
        print(array1)
        /// result: ["b", "c", "d", "f", "i"]
    }
    
}


