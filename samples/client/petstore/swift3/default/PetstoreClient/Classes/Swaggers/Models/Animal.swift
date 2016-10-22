//
// Animal.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Animal: JSONEncodable {
    public var className: String?
    public var color: String?

    public init() {}

    // MARK: JSONEncodable
    public func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["className"] = self.className
        nillableDictionary["color"] = self.color
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
