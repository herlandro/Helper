//
//  LogHelper.swift
//  Helper
//
//  Created by Herlandro Hermogenes on 13/05/2020.
//  Copyright © 2020 Herlandro Hermogenes. All rights reserved.
//

import Foundation

func printLog(_ message: String, file: String = #file, function: String = #function, line: Int = #line) {
    #if DEBUG
        let className = file.components(separatedBy: "/").last
        print(" ❌ Error ----> File: \(className ?? ""), Function: \(function), Line: \(line), Message: \(message)")
    #endif
}
