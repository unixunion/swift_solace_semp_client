//
// MsgVpnBridgeRemoteSubscription.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class MsgVpnBridgeRemoteSubscription: JSONEncodable {
    public enum BridgeVirtualRouter: String { 
        case Primary = "primary"
        case Backup = "backup"
        case Auto = "auto"
    }
    /** The name of the Bridge. */
    public var bridgeName: String?
    /** Specify whether the Bridge is configured for the primary or backup Virtual Router or auto configured. The allowed values and their meaning are:  &lt;pre&gt; \&quot;primary\&quot; - The Bridge is used for the primary Virtual Router. \&quot;backup\&quot; - The Bridge is used for the backup Virtual Router. \&quot;auto\&quot; - The Bridge is automatically assigned a Router. &lt;/pre&gt;  */
    public var bridgeVirtualRouter: BridgeVirtualRouter?
    /** Flag the Subscription Topic as deliver always instead of with the deliver-to-one remote priority value for the Bridge given by \&quot;remoteDeliverToOnePriority\&quot;. A given topic may be deliver-to-one or deliver always but not both. */
    public var deliverAlwaysEnabled: Bool?
    /** The name of the Message VPN. */
    public var msgVpnName: String?
    /** The Topic of the Remote Subscription. */
    public var remoteSubscriptionTopic: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["bridgeName"] = self.bridgeName
        nillableDictionary["bridgeVirtualRouter"] = self.bridgeVirtualRouter?.rawValue
        nillableDictionary["deliverAlwaysEnabled"] = self.deliverAlwaysEnabled
        nillableDictionary["msgVpnName"] = self.msgVpnName
        nillableDictionary["remoteSubscriptionTopic"] = self.remoteSubscriptionTopic
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
