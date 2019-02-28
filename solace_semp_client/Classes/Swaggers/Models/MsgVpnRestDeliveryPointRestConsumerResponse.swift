//
// MsgVpnRestDeliveryPointRestConsumerResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class MsgVpnRestDeliveryPointRestConsumerResponse: JSONEncodable {
    public var data: MsgVpnRestDeliveryPointRestConsumer?
    public var links: MsgVpnRestDeliveryPointRestConsumerLinks?
    public var meta: SempMeta?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["data"] = self.data?.encodeToJSON()
        nillableDictionary["links"] = self.links?.encodeToJSON()
        nillableDictionary["meta"] = self.meta?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
