//
// MsgVpnQueue.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class MsgVpnQueue: JSONEncodable {
    public enum AccessType: String { 
        case Exclusive = "exclusive"
        case NonExclusive = "non-exclusive"
    }
    public enum Permission: String { 
        case NoAccess = "no-access"
        case ReadOnly = "read-only"
        case Consume = "consume"
        case ModifyTopic = "modify-topic"
        case Delete = "delete"
    }
    public enum RejectMsgToSenderOnDiscardBehavior: String { 
        case Always = "always"
        case WhenQueueEnabled = "when-queue-enabled"
        case Never = "never"
    }
    /** The Queue access type of either \&quot;exclusive\&quot; or \&quot;non-exclusive\&quot;. The default value is &#x60;\&quot;exclusive\&quot;&#x60;. The allowed values and their meaning are:  &lt;pre&gt; \&quot;exclusive\&quot; - Exclusive delivery of messages to first bound client. \&quot;non-exclusive\&quot; - Non-exclusive delivery of messages to all bound clients. &lt;/pre&gt;  */
    public var accessType: AccessType?
    /** Enable or disable the propagation of Consumer ACKs received on the active replication Message VPN to the standby replication Message VPN. The default value is &#x60;true&#x60;. */
    public var consumerAckPropagationEnabled: Bool?
    /** The name of the Dead Message Queue (DMQ) used by the Queue. The default value is &#x60;\&quot;#DEAD_MSG_QUEUE\&quot;&#x60;. Available since 2.2. */
    public var deadMsgQueue: String?
    /** Enable or disable the egress flow of messages from the Queue. The default value is &#x60;false&#x60;. */
    public var egressEnabled: Bool?
    public var eventBindCountThreshold: EventThreshold?
    public var eventMsgSpoolUsageThreshold: EventThreshold?
    public var eventRejectLowPriorityMsgLimitThreshold: EventThreshold?
    /** Enable or disable the ingress flow of messages to the Queue. The default value is &#x60;false&#x60;. */
    public var ingressEnabled: Bool?
    /** The maximum number of simultaneous clients that can bind to the Queue. The default value is &#x60;1000&#x60;. */
    public var maxBindCount: Int64?
    /** The maximum allowed number of messages delivered but not acknowledged per flow for the Queue. The default is the maximum value supported by the hardware. The default is the max value supported by the hardware. */
    public var maxDeliveredUnackedMsgsPerFlow: Int64?
    /** The maximum message size allowed in the Queue, in bytes. The default value is &#x60;10000000&#x60;. */
    public var maxMsgSize: Int32?
    /** The maximum Message Spool usage by the Queue (quota), in megabytes. Setting the value to zero enables the \&quot;last-value-queue\&quot; feature and disables quota checking. The default varies by platform. The default varies by platform. */
    public var maxMsgSpoolUsage: Int64?
    /** The maximum number of times the Queue will attempt redelivery of a given message prior to it being discarded or moved to the #DEAD_MSG_QUEUE. A value of 0 means to retry forever. The default value is &#x60;0&#x60;. */
    public var maxRedeliveryCount: Int64?
    /** The maximum number of seconds that a message can stay in the Queue when \&quot;respectTtlEnabled\&quot; is \&quot;true\&quot;. A message will expire according to the lesser of the TTL in the message (assigned by the Publisher) and the \&quot;maxTtl\&quot; configured in the Queue. \&quot;maxTtl\&quot; is a 32-bit integer value from 1 to 4294967295 representing the expiry time in seconds. A \&quot;maxTtl\&quot; of \&quot;0\&quot; disables this feature. The default value is &#x60;0&#x60;. */
    public var maxTtl: Int64?
    /** The name of the Message VPN. */
    public var msgVpnName: String?
    /** The Client Username which owns the Queue. The default value is &#x60;\&quot;\&quot;&#x60;. */
    public var owner: String?
    /** Permission level for users of the Queue, excluding the owner. The default value is &#x60;\&quot;no-access\&quot;&#x60;. The allowed values and their meaning are:  &lt;pre&gt; \&quot;no-access\&quot; - Disallows all access. \&quot;read-only\&quot; - Read-only access to the messages in the Queue. \&quot;consume\&quot; - Consume (read and remove) messages in the Queue. \&quot;modify-topic\&quot; - Consume messages or modify the topic/selector of the Queue. \&quot;delete\&quot; - Consume messages, modify the topic/selector or delete the Queue altogether. &lt;/pre&gt;  */
    public var permission: Permission?
    /** The name of the Queue. */
    public var queueName: String?
    /** Enable or disable if low priority messages are subject to \&quot;rejectLowPriorityMsgLimit\&quot; checking. This may only be enabled if \&quot;rejectMsgToSenderOnDiscardBehavior\&quot; does not have a value of \&quot;never\&quot;. The default value is &#x60;false&#x60;. */
    public var rejectLowPriorityMsgEnabled: Bool?
    /** The number of messages of any priority in the Queue above which low priority messages are not admitted but higher priority messages are allowed. The default value is &#x60;0&#x60;. */
    public var rejectLowPriorityMsgLimit: Int64?
    /** Assign the message discard behavior, that is the circumstances under which a negative acknowledgement (NACK) is sent to the client on discards. Note that NACKs cause the message to not be delivered to any destination and transacted-session commits to fail. This attribute may only have a value of \&quot;never\&quot; if \&quot;rejectLowPriorityMsgEnabled\&quot; is disabled. The default value is &#x60;\&quot;when-queue-enabled\&quot;&#x60;. The allowed values and their meaning are:  &lt;pre&gt; \&quot;always\&quot; - Message discards always result in negative acknowledgments (NACKs) being returned to the sending client, even if the discard reason is that the Queue is disabled. \&quot;when-queue-enabled\&quot; - Message discards result in negative acknowledgments (NACKs) being returned to the sending client, except if the discard reason is that the Queue is disabled. \&quot;never\&quot; - Message discards never result in negative acknowledgments (NACKs) being returned to the sending client. &lt;/pre&gt;  Available since 2.1. */
    public var rejectMsgToSenderOnDiscardBehavior: RejectMsgToSenderOnDiscardBehavior?
    /** Enable or disable the respecting of message priority. If enabled, messages contained in the Queue are delivered in priority order, from 9 (highest) to 0 (lowest). MQTT queues do not support enabling message priority. The default value is &#x60;false&#x60;. Available since 2.8. */
    public var respectMsgPriorityEnabled: Bool?
    /** Enable or disable the respecting of the \&quot;time to live\&quot; (TTL). If enabled, then messages contained in the Queue are checked for expiry. If expired, the message is removed from the Queue and either discarded or a copy of the message placed in the #DEAD_MSG_QUEUE. The default value is &#x60;false&#x60;. */
    public var respectTtlEnabled: Bool?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["accessType"] = self.accessType?.rawValue
        nillableDictionary["consumerAckPropagationEnabled"] = self.consumerAckPropagationEnabled
        nillableDictionary["deadMsgQueue"] = self.deadMsgQueue
        nillableDictionary["egressEnabled"] = self.egressEnabled
        nillableDictionary["eventBindCountThreshold"] = self.eventBindCountThreshold?.encodeToJSON()
        nillableDictionary["eventMsgSpoolUsageThreshold"] = self.eventMsgSpoolUsageThreshold?.encodeToJSON()
        nillableDictionary["eventRejectLowPriorityMsgLimitThreshold"] = self.eventRejectLowPriorityMsgLimitThreshold?.encodeToJSON()
        nillableDictionary["ingressEnabled"] = self.ingressEnabled
        nillableDictionary["maxBindCount"] = self.maxBindCount?.encodeToJSON()
        nillableDictionary["maxDeliveredUnackedMsgsPerFlow"] = self.maxDeliveredUnackedMsgsPerFlow?.encodeToJSON()
        nillableDictionary["maxMsgSize"] = self.maxMsgSize?.encodeToJSON()
        nillableDictionary["maxMsgSpoolUsage"] = self.maxMsgSpoolUsage?.encodeToJSON()
        nillableDictionary["maxRedeliveryCount"] = self.maxRedeliveryCount?.encodeToJSON()
        nillableDictionary["maxTtl"] = self.maxTtl?.encodeToJSON()
        nillableDictionary["msgVpnName"] = self.msgVpnName
        nillableDictionary["owner"] = self.owner
        nillableDictionary["permission"] = self.permission?.rawValue
        nillableDictionary["queueName"] = self.queueName
        nillableDictionary["rejectLowPriorityMsgEnabled"] = self.rejectLowPriorityMsgEnabled
        nillableDictionary["rejectLowPriorityMsgLimit"] = self.rejectLowPriorityMsgLimit?.encodeToJSON()
        nillableDictionary["rejectMsgToSenderOnDiscardBehavior"] = self.rejectMsgToSenderOnDiscardBehavior?.rawValue
        nillableDictionary["respectMsgPriorityEnabled"] = self.respectMsgPriorityEnabled
        nillableDictionary["respectTtlEnabled"] = self.respectTtlEnabled
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
