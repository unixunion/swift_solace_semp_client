//
// MsgVpnQueueLinks.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class MsgVpnQueueLinks: JSONEncodable {
    /** The URI of this MsgVpnQueue&#39;s subscriptions collection. */
    public var subscriptionsUri: String?
    /** The URI of this MsgVpnQueue object. */
    public var uri: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["subscriptionsUri"] = self.subscriptionsUri
        nillableDictionary["uri"] = self.uri
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
