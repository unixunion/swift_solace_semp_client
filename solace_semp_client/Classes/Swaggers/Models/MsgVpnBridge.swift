//
// MsgVpnBridge.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class MsgVpnBridge: JSONEncodable {
    public enum BridgeVirtualRouter: String { 
        case Primary = "primary"
        case Backup = "backup"
        case Auto = "auto"
    }
    public enum RemoteAuthenticationScheme: String { 
        case Basic = "basic"
        case ClientCertificate = "client-certificate"
    }
    public enum RemoteDeliverToOnePriority: String { 
        case P1 = "p1"
        case P2 = "p2"
        case P3 = "p3"
        case P4 = "p4"
        case Da = "da"
    }
    /** The name of the Bridge. */
    public var bridgeName: String?
    /** Specify whether the Bridge is configured for the primary or backup Virtual Router or auto configured. The allowed values and their meaning are:  &lt;pre&gt; \&quot;primary\&quot; - The Bridge is used for the primary Virtual Router. \&quot;backup\&quot; - The Bridge is used for the backup Virtual Router. \&quot;auto\&quot; - The Bridge is automatically assigned a Router. &lt;/pre&gt;  */
    public var bridgeVirtualRouter: BridgeVirtualRouter?
    /** Enable or disable the Bridge. The default value is &#x60;false&#x60;. */
    public var enabled: Bool?
    /** The maximum number of hops (intermediate routers through which data must pass between source and destination) that can occur before the message is discarded. When the Bridge sends a message to the remote router, the message TTL value is assigned to the lower of the message current TTL or this value. The default value is &#x60;8&#x60;. */
    public var maxTtl: Int64?
    /** The name of the Message VPN. */
    public var msgVpnName: String?
    /** The Client Username that the Bridge uses to login to the Remote Message VPN. The default value is &#x60;\&quot;\&quot;&#x60;. */
    public var remoteAuthenticationBasicClientUsername: String?
    /** The password the Message VPN Bridge uses to login to the Remote Message VPN. The default is to have no &#x60;remoteAuthenticationBasicPassword&#x60;. */
    public var remoteAuthenticationBasicPassword: String?
    /** The PEM formatted content for the client certificate used by this bridge to login to the Remote Message VPN. It must consist of a private key and between one and three certificates comprising the certificate trust chain. The default value is &#x60;\&quot;\&quot;&#x60;. Available since 2.9. */
    public var remoteAuthenticationClientCertContent: String?
    /** The password for the client certificate used by this bridge to login to the Remote Message VPN. The default value is &#x60;\&quot;\&quot;&#x60;. Available since 2.9. */
    public var remoteAuthenticationClientCertPassword: String?
    /** The authentication scheme for the Remote Message VPN. The default value is &#x60;\&quot;basic\&quot;&#x60;. The allowed values and their meaning are:  &lt;pre&gt; \&quot;basic\&quot; - Basic Authentication Scheme (via username and password). \&quot;client-certificate\&quot; - Client Certificate Authentication Scheme (via certificate file or content). &lt;/pre&gt;  */
    public var remoteAuthenticationScheme: RemoteAuthenticationScheme?
    /** The maximum number of attempts to establish a connection to the Remote Message VPN. The default value is &#x60;0&#x60;. */
    public var remoteConnectionRetryCount: Int64?
    /** The amount of time before making another attempt to connect to the Remote Message VPN after a failed one, in seconds. The default value is &#x60;3&#x60;. */
    public var remoteConnectionRetryDelay: Int64?
    /** The priority for deliver-to-one (DTO) messages sent from the Remote Message VPN to the Message VPN Bridge. The default value is &#x60;\&quot;p1\&quot;&#x60;. The allowed values and their meaning are:  &lt;pre&gt; \&quot;p1\&quot; - Priority 1 (highest). \&quot;p2\&quot; - Priority 2. \&quot;p3\&quot; - Priority 3. \&quot;p4\&quot; - Priority 4 (lowest). \&quot;da\&quot; - Deliver Always. &lt;/pre&gt;  */
    public var remoteDeliverToOnePriority: RemoteDeliverToOnePriority?
    /** The list of cipher suites supported for TLS connections to the Remote Message VPN. The default value is &#x60;\&quot;default\&quot;&#x60;. */
    public var tlsCipherSuiteList: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["bridgeName"] = self.bridgeName
        nillableDictionary["bridgeVirtualRouter"] = self.bridgeVirtualRouter?.rawValue
        nillableDictionary["enabled"] = self.enabled
        nillableDictionary["maxTtl"] = self.maxTtl?.encodeToJSON()
        nillableDictionary["msgVpnName"] = self.msgVpnName
        nillableDictionary["remoteAuthenticationBasicClientUsername"] = self.remoteAuthenticationBasicClientUsername
        nillableDictionary["remoteAuthenticationBasicPassword"] = self.remoteAuthenticationBasicPassword
        nillableDictionary["remoteAuthenticationClientCertContent"] = self.remoteAuthenticationClientCertContent
        nillableDictionary["remoteAuthenticationClientCertPassword"] = self.remoteAuthenticationClientCertPassword
        nillableDictionary["remoteAuthenticationScheme"] = self.remoteAuthenticationScheme?.rawValue
        nillableDictionary["remoteConnectionRetryCount"] = self.remoteConnectionRetryCount?.encodeToJSON()
        nillableDictionary["remoteConnectionRetryDelay"] = self.remoteConnectionRetryDelay?.encodeToJSON()
        nillableDictionary["remoteDeliverToOnePriority"] = self.remoteDeliverToOnePriority?.rawValue
        nillableDictionary["tlsCipherSuiteList"] = self.tlsCipherSuiteList
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
