//
// SempPaging.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class SempPaging: JSONEncodable {
    /** The cursor, or position, for the next page of objects. Use this as the &#x60;cursor&#x60; query parameter of the next request. */
    public var cursorQuery: String?
    /** The URI of the next page of objects. &#x60;cursorQuery&#x60; is already embedded within this URI. */
    public var nextPageUri: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["cursorQuery"] = self.cursorQuery
        nillableDictionary["nextPageUri"] = self.nextPageUri
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
