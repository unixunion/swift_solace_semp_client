//
// MsgVpnRestDeliveryPointRestConsumerLinks.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class MsgVpnRestDeliveryPointRestConsumerLinks: JSONEncodable {
    /** The URI of this MsgVpnRestDeliveryPointRestConsumer&#39;s tlsTrustedCommonNames collection. Available since 2.7. */
    public var tlsTrustedCommonNamesUri: String?
    /** The URI of this MsgVpnRestDeliveryPointRestConsumer object. */
    public var uri: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["tlsTrustedCommonNamesUri"] = self.tlsTrustedCommonNamesUri
        nillableDictionary["uri"] = self.uri
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
