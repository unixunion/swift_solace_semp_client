//
// MsgVpnMqttSessionSubscription.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class MsgVpnMqttSessionSubscription: JSONEncodable {
    public enum MqttSessionVirtualRouter: String { 
        case Primary = "primary"
        case Backup = "backup"
    }
    /** The Client ID of the MQTT Session, which corresponds to the ClientId provided in the MQTT CONNECT packet. */
    public var mqttSessionClientId: String?
    /** The Virtual Router of the MQTT Session. The allowed values and their meaning are:  &lt;pre&gt; \&quot;primary\&quot; - The MQTT Session belongs to the primary Virtual Router. \&quot;backup\&quot; - The MQTT Session belongs to the backup Virtual Router. &lt;/pre&gt;  */
    public var mqttSessionVirtualRouter: MqttSessionVirtualRouter?
    /** The name of the Message VPN. */
    public var msgVpnName: String?
    /** The quality of service (QoS) for the subscription as either 0 (deliver at most once) or 1 (deliver at least once). QoS 2 is not supported, but QoS 2 messages attracted by QoS 0 or QoS 1 subscriptions are accepted and delivered accordingly. The default value is &#x60;0&#x60;. */
    public var subscriptionQos: Int64?
    /** The MQTT subscription topic. */
    public var subscriptionTopic: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["mqttSessionClientId"] = self.mqttSessionClientId
        nillableDictionary["mqttSessionVirtualRouter"] = self.mqttSessionVirtualRouter?.rawValue
        nillableDictionary["msgVpnName"] = self.msgVpnName
        nillableDictionary["subscriptionQos"] = self.subscriptionQos?.encodeToJSON()
        nillableDictionary["subscriptionTopic"] = self.subscriptionTopic
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
