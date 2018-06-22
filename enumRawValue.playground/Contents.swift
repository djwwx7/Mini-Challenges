//: Playground - noun: a place where people can play

import UIKit

enum StatusCode: Int {
    case ok = 200
    case unauthorized = 401
    case forbidden = 403
    case notFound = 404
}

func prettyPrint(enumVal: StatusCode)-> String {
    
    switch enumVal {
        
    case .ok:
        return("\(enumVal.rawValue): Ok")
        
    case .unauthorized:
        return("\(enumVal.rawValue): Unauthorized")
        
    case .forbidden:
        return("\(enumVal.rawValue): Forbidden")
        
    case .notFound:
        return("\(enumVal.rawValue): Not Found")
    }
}

let status1 = prettyPrint(enumVal: .ok)
let status2 = prettyPrint(enumVal: .unauthorized)
let status3 = prettyPrint(enumVal: .forbidden)
let status4 = prettyPrint(enumVal: .notFound)

print(status1)
print(status2)
print(status3)
print(status4)
