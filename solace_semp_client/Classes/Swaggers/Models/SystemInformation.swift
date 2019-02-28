//
// SystemInformation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class SystemInformation: JSONEncodable {
    /** The platform that is running the API. */
    public var platform: String?
    /** The SEMP API version. */
    public var sempVersion: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["platform"] = self.platform
        nillableDictionary["sempVersion"] = self.sempVersion
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
