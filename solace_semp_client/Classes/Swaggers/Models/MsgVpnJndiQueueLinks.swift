//
// MsgVpnJndiQueueLinks.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class MsgVpnJndiQueueLinks: JSONEncodable {
    /** The URI of this MsgVpnJndiQueue object. */
    public var uri: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["uri"] = self.uri
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
