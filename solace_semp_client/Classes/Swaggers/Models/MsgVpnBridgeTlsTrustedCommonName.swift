//
// MsgVpnBridgeTlsTrustedCommonName.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class MsgVpnBridgeTlsTrustedCommonName: JSONEncodable {
    public enum BridgeVirtualRouter: String { 
        case Primary = "primary"
        case Backup = "backup"
        case Auto = "auto"
    }
    /** The name of the Bridge. */
    public var bridgeName: String?
    /** Specify whether the Bridge is configured for the primary or backup Virtual Router or auto configured. The allowed values and their meaning are:  &lt;pre&gt; \&quot;primary\&quot; - The Bridge is used for the primary Virtual Router. \&quot;backup\&quot; - The Bridge is used for the backup Virtual Router. \&quot;auto\&quot; - The Bridge is automatically assigned a Router. &lt;/pre&gt;  */
    public var bridgeVirtualRouter: BridgeVirtualRouter?
    /** The name of the Message VPN. */
    public var msgVpnName: String?
    /** The expected trusted common name of the remote certificate. */
    public var tlsTrustedCommonName: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["bridgeName"] = self.bridgeName
        nillableDictionary["bridgeVirtualRouter"] = self.bridgeVirtualRouter?.rawValue
        nillableDictionary["msgVpnName"] = self.msgVpnName
        nillableDictionary["tlsTrustedCommonName"] = self.tlsTrustedCommonName
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}