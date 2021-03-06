//
// MsgVpnRestDeliveryPointQueueBinding.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class MsgVpnRestDeliveryPointQueueBinding: JSONEncodable {
    /** Enable or disable whether the authority for the request-target is replaced with that configured for the REST Consumer remote. When enabled, the router sends HTTP requests in absolute-form, with the request-target&#39;s authority taken from the REST Consumer&#39;s remote host and port configuration. When disabled, the router sends HTTP requests whose request-target matches that of the original request message, including whether to use absolute-form or origin-form. This configuration is applicable only when the Message VPN is in REST gateway mode. The default value is &#x60;false&#x60;. Available since 2.6. */
    public var gatewayReplaceTargetAuthorityEnabled: Bool?
    /** The name of the Message VPN. */
    public var msgVpnName: String?
    /** The POST request-target string to use when sending requests. It identifies the target resource on the far-end REST Consumer upon which to apply the POST request. There are generally two common forms for the request-target. The origin-form is most often used in practice and contains the path and query components of the target URI. If the path component is empty then the client must generally send a \&quot;/\&quot; as the path. When making a request to a proxy, most often the absolute-form is required. This configuration is only applicable when the Message VPN is in REST messaging mode. The default value is &#x60;\&quot;\&quot;&#x60;. */
    public var postRequestTarget: String?
    /** The name of a queue within this Message VPN. */
    public var queueBindingName: String?
    /** The name of the REST Delivery Point. */
    public var restDeliveryPointName: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["gatewayReplaceTargetAuthorityEnabled"] = self.gatewayReplaceTargetAuthorityEnabled
        nillableDictionary["msgVpnName"] = self.msgVpnName
        nillableDictionary["postRequestTarget"] = self.postRequestTarget
        nillableDictionary["queueBindingName"] = self.queueBindingName
        nillableDictionary["restDeliveryPointName"] = self.restDeliveryPointName
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
