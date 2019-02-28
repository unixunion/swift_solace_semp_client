//
// BridgeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class BridgeAPI: APIBase {
    /**
     Gets a list of Bridge objects.
     
     - parameter msgVpnName: (path) The msgVpnName of the Message VPN. 
     - parameter count: (query) Limit the count of objects in the response. See [Count](#count \&quot;Description of the syntax of the &#x60;count&#x60; parameter\&quot;). (optional, default to 10)
     - parameter cursor: (query) The cursor, or position, for the next page of objects. See [Cursor](#cursor \&quot;Description of the syntax of the &#x60;cursor&#x60; parameter\&quot;). (optional)
     - parameter _where: (query) Include in the response only objects where certain conditions are true. See [Where](#where \&quot;Description of the syntax of the &#x60;where&#x60; parameter\&quot;). (optional)
     - parameter select: (query) Include in the response only selected attributes of the object, or exclude from the response selected attributes of the object. See [Select](#select \&quot;Description of the syntax of the &#x60;select&#x60; parameter\&quot;). (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getMsgVpnBridges(msgVpnName msgVpnName: String, count: Int32? = nil, cursor: String? = nil, _where: [String]? = nil, select: [String]? = nil, completion: ((data: MsgVpnBridgesResponse?, error: ErrorType?) -> Void)) {
        getMsgVpnBridgesWithRequestBuilder(msgVpnName: msgVpnName, count: count, cursor: cursor, _where: _where, select: select).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Gets a list of Bridge objects.
     - GET /msgVpns/{msgVpnName}/bridges
     - Gets a list of Bridge objects.   Attribute|Identifying|Write-Only|Deprecated :---|:---:|:---:|:---: bridgeName|x|| bridgeVirtualRouter|x|| msgVpnName|x|| remoteAuthenticationBasicPassword||x| remoteAuthenticationClientCertContent||x| remoteAuthenticationClientCertPassword||x|    A SEMP client authorized with a minimum access scope/level of \"vpn/readonly\" is required to perform this operation.  This has been available since 2.0.
     - BASIC:
       - type: basic
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "remoteAuthenticationBasicClientUsername" : "remoteAuthenticationBasicClientUsername",
    "remoteAuthenticationClientCertPassword" : "remoteAuthenticationClientCertPassword",
    "maxTtl" : 0,
    "remoteDeliverToOnePriority" : "p1",
    "bridgeName" : "bridgeName",
    "enabled" : true,
    "remoteAuthenticationBasicPassword" : "remoteAuthenticationBasicPassword",
    "bridgeVirtualRouter" : "primary",
    "remoteAuthenticationClientCertContent" : "remoteAuthenticationClientCertContent",
    "remoteConnectionRetryCount" : 6,
    "remoteConnectionRetryDelay" : 1,
    "tlsCipherSuiteList" : "tlsCipherSuiteList",
    "msgVpnName" : "msgVpnName",
    "remoteAuthenticationScheme" : "basic"
  }, {
    "remoteAuthenticationBasicClientUsername" : "remoteAuthenticationBasicClientUsername",
    "remoteAuthenticationClientCertPassword" : "remoteAuthenticationClientCertPassword",
    "maxTtl" : 0,
    "remoteDeliverToOnePriority" : "p1",
    "bridgeName" : "bridgeName",
    "enabled" : true,
    "remoteAuthenticationBasicPassword" : "remoteAuthenticationBasicPassword",
    "bridgeVirtualRouter" : "primary",
    "remoteAuthenticationClientCertContent" : "remoteAuthenticationClientCertContent",
    "remoteConnectionRetryCount" : 6,
    "remoteConnectionRetryDelay" : 1,
    "tlsCipherSuiteList" : "tlsCipherSuiteList",
    "msgVpnName" : "msgVpnName",
    "remoteAuthenticationScheme" : "basic"
  } ],
  "meta" : {
    "request" : {
      "method" : "method",
      "uri" : "uri"
    },
    "paging" : {
      "nextPageUri" : "nextPageUri",
      "cursorQuery" : "cursorQuery"
    },
    "error" : {
      "code" : 0,
      "description" : "description",
      "status" : "status"
    },
    "responseCode" : 6
  },
  "links" : [ {
    "remoteMsgVpnsUri" : "remoteMsgVpnsUri",
    "uri" : "uri",
    "remoteSubscriptionsUri" : "remoteSubscriptionsUri",
    "tlsTrustedCommonNamesUri" : "tlsTrustedCommonNamesUri"
  }, {
    "remoteMsgVpnsUri" : "remoteMsgVpnsUri",
    "uri" : "uri",
    "remoteSubscriptionsUri" : "remoteSubscriptionsUri",
    "tlsTrustedCommonNamesUri" : "tlsTrustedCommonNamesUri"
  } ]
}}]
     
     - parameter msgVpnName: (path) The msgVpnName of the Message VPN. 
     - parameter count: (query) Limit the count of objects in the response. See [Count](#count \&quot;Description of the syntax of the &#x60;count&#x60; parameter\&quot;). (optional, default to 10)
     - parameter cursor: (query) The cursor, or position, for the next page of objects. See [Cursor](#cursor \&quot;Description of the syntax of the &#x60;cursor&#x60; parameter\&quot;). (optional)
     - parameter _where: (query) Include in the response only objects where certain conditions are true. See [Where](#where \&quot;Description of the syntax of the &#x60;where&#x60; parameter\&quot;). (optional)
     - parameter select: (query) Include in the response only selected attributes of the object, or exclude from the response selected attributes of the object. See [Select](#select \&quot;Description of the syntax of the &#x60;select&#x60; parameter\&quot;). (optional)

     - returns: RequestBuilder<MsgVpnBridgesResponse> 
     */
    public class func getMsgVpnBridgesWithRequestBuilder(msgVpnName msgVpnName: String, count: Int32? = nil, cursor: String? = nil, _where: [String]? = nil, select: [String]? = nil) -> RequestBuilder<MsgVpnBridgesResponse> {
        var path = "/msgVpns/{msgVpnName}/bridges"
        path = path.stringByReplacingOccurrencesOfString("{msgVpnName}", withString: "\(msgVpnName)", options: .LiteralSearch, range: nil)
        let URLString = solace_semp_clientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "count": count?.encodeToJSON(),
            "cursor": cursor,
            "where": _where,
            "select": select
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<MsgVpnBridgesResponse>.Type = solace_semp_clientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}