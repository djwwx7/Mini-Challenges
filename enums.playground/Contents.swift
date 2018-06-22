//: Playground - noun: a place where people can play

import UIKit

enum StatusCode {
    case ok
    case unauthorized
    case forbidden
    case notFound
}

func prettyPrint(enumVal: StatusCode)-> String {
    
    switch enumVal {
        
    case .ok:
        return("200: Ok")
        
    case .unauthorized:
        return("401: Unauthorized")
        
    case .forbidden:
        return("403: Forbidden")
        
    case .notFound:
        return("404: Not Found")
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
