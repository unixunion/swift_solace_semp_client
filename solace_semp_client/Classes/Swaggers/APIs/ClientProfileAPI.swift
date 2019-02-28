//
// ClientProfileAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ClientProfileAPI: APIBase {
    /**
     Gets a list of Client Profile objects.
     
     - parameter msgVpnName: (path) The msgVpnName of the Message VPN. 
     - parameter count: (query) Limit the count of objects in the response. See [Count](#count \&quot;Description of the syntax of the &#x60;count&#x60; parameter\&quot;). (optional, default to 10)
     - parameter cursor: (query) The cursor, or position, for the next page of objects. See [Cursor](#cursor \&quot;Description of the syntax of the &#x60;cursor&#x60; parameter\&quot;). (optional)
     - parameter _where: (query) Include in the response only objects where certain conditions are true. See [Where](#where \&quot;Description of the syntax of the &#x60;where&#x60; parameter\&quot;). (optional)
     - parameter select: (query) Include in the response only selected attributes of the object, or exclude from the response selected attributes of the object. See [Select](#select \&quot;Description of the syntax of the &#x60;select&#x60; parameter\&quot;). (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getMsgVpnClientProfiles(msgVpnName msgVpnName: String, count: Int32? = nil, cursor: String? = nil, _where: [String]? = nil, select: [String]? = nil, completion: ((data: MsgVpnClientProfilesResponse?, error: ErrorType?) -> Void)) {
        getMsgVpnClientProfilesWithRequestBuilder(msgVpnName: msgVpnName, count: count, cursor: cursor, _where: _where, select: select).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Gets a list of Client Profile objects.
     - GET /msgVpns/{msgVpnName}/clientProfiles
     - Gets a list of Client Profile objects.   Attribute|Identifying|Write-Only|Deprecated :---|:---:|:---:|:---: clientProfileName|x|| msgVpnName|x||    A SEMP client authorized with a minimum access scope/level of \"vpn/readonly\" is required to perform this operation.  This has been available since 2.0.
     - BASIC:
       - type: basic
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "apiTopicEndpointManagementCopyFromOnCreateName" : "apiTopicEndpointManagementCopyFromOnCreateName",
    "compressionEnabled" : true,
    "tcpMaxWindowSize" : 6,
    "clientProfileName" : "clientProfileName",
    "eventTransactionCountThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "tcpMaxSegmentSize" : 2,
    "queueDirect2MaxDepth" : 6,
    "msgVpnName" : "msgVpnName",
    "eventClientProvisionedEndpointSpoolUsageThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5
    },
    "eventEgressFlowCountThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "queueDirect3MinMsgBurst" : 4,
    "elidingDelay" : 0,
    "eventServiceWebConnectionCountPerClientUsernameThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "queueControl1MinMsgBurst" : 1,
    "serviceWebMaxPayload" : 9,
    "eventTransactedSessionCountThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "eventSubscriptionCountThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "tlsAllowDowngradeToPlainTextEnabled" : true,
    "tcpKeepaliveIdleTime" : 6,
    "maxEndpointCountPerClientUsername" : 7,
    "queueDirect2MinMsgBurst" : 7,
    "queueGuaranteed1MinMsgBurst" : 9,
    "queueDirect1MaxDepth" : 1,
    "eventServiceSmfConnectionCountPerClientUsernameThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "tcpCongestionWindowSize" : 6,
    "eventEndpointCountPerClientUsernameThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "queueDirect3MaxDepth" : 1,
    "allowBridgeConnectionsEnabled" : true,
    "allowTransactedSessionsEnabled" : true,
    "serviceSmfMaxConnectionCountPerClientUsername" : 9,
    "allowGuaranteedMsgSendEnabled" : true,
    "queueDirect1MinMsgBurst" : 1,
    "queueGuaranteed1MaxDepth" : 5,
    "serviceWebInactiveTimeout" : 6,
    "allowGuaranteedMsgReceiveEnabled" : true,
    "tcpKeepaliveCount" : 3,
    "maxTransactionCount" : 4,
    "maxSubscriptionCount" : 3,
    "eventConnectionCountPerClientUsernameThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "elidingMaxTopicCount" : 6,
    "queueControl1MaxDepth" : 7,
    "tcpKeepaliveInterval" : 1,
    "elidingEnabled" : true,
    "maxIngressFlowCount" : 9,
    "replicationAllowClientConnectWhenStandbyEnabled" : true,
    "maxEgressFlowCount" : 2,
    "maxTransactedSessionCount" : 2,
    "rejectMsgToSenderOnNoSubscriptionMatchEnabled" : true,
    "serviceWebMaxConnectionCountPerClientUsername" : 8,
    "allowGuaranteedEndpointCreateEnabled" : true,
    "allowCutThroughForwardingEnabled" : true,
    "apiQueueManagementCopyFromOnCreateName" : "apiQueueManagementCopyFromOnCreateName",
    "maxConnectionCountPerClientUsername" : 5,
    "eventIngressFlowCountThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    }
  }, {
    "apiTopicEndpointManagementCopyFromOnCreateName" : "apiTopicEndpointManagementCopyFromOnCreateName",
    "compressionEnabled" : true,
    "tcpMaxWindowSize" : 6,
    "clientProfileName" : "clientProfileName",
    "eventTransactionCountThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "tcpMaxSegmentSize" : 2,
    "queueDirect2MaxDepth" : 6,
    "msgVpnName" : "msgVpnName",
    "eventClientProvisionedEndpointSpoolUsageThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5
    },
    "eventEgressFlowCountThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "queueDirect3MinMsgBurst" : 4,
    "elidingDelay" : 0,
    "eventServiceWebConnectionCountPerClientUsernameThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "queueControl1MinMsgBurst" : 1,
    "serviceWebMaxPayload" : 9,
    "eventTransactedSessionCountThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "eventSubscriptionCountThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "tlsAllowDowngradeToPlainTextEnabled" : true,
    "tcpKeepaliveIdleTime" : 6,
    "maxEndpointCountPerClientUsername" : 7,
    "queueDirect2MinMsgBurst" : 7,
    "queueGuaranteed1MinMsgBurst" : 9,
    "queueDirect1MaxDepth" : 1,
    "eventServiceSmfConnectionCountPerClientUsernameThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "tcpCongestionWindowSize" : 6,
    "eventEndpointCountPerClientUsernameThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "queueDirect3MaxDepth" : 1,
    "allowBridgeConnectionsEnabled" : true,
    "allowTransactedSessionsEnabled" : true,
    "serviceSmfMaxConnectionCountPerClientUsername" : 9,
    "allowGuaranteedMsgSendEnabled" : true,
    "queueDirect1MinMsgBurst" : 1,
    "queueGuaranteed1MaxDepth" : 5,
    "serviceWebInactiveTimeout" : 6,
    "allowGuaranteedMsgReceiveEnabled" : true,
    "tcpKeepaliveCount" : 3,
    "maxTransactionCount" : 4,
    "maxSubscriptionCount" : 3,
    "eventConnectionCountPerClientUsernameThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    },
    "elidingMaxTopicCount" : 6,
    "queueControl1MaxDepth" : 7,
    "tcpKeepaliveInterval" : 1,
    "elidingEnabled" : true,
    "maxIngressFlowCount" : 9,
    "replicationAllowClientConnectWhenStandbyEnabled" : true,
    "maxEgressFlowCount" : 2,
    "maxTransactedSessionCount" : 2,
    "rejectMsgToSenderOnNoSubscriptionMatchEnabled" : true,
    "serviceWebMaxConnectionCountPerClientUsername" : 8,
    "allowGuaranteedEndpointCreateEnabled" : true,
    "allowCutThroughForwardingEnabled" : true,
    "apiQueueManagementCopyFromOnCreateName" : "apiQueueManagementCopyFromOnCreateName",
    "maxConnectionCountPerClientUsername" : 5,
    "eventIngressFlowCountThreshold" : {
      "clearPercent" : 1,
      "setPercent" : 5,
      "setValue" : 2,
      "clearValue" : 5
    }
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
    "uri" : "uri"
  }, {
    "uri" : "uri"
  } ]
}}]
     
     - parameter msgVpnName: (path) The msgVpnName of the Message VPN. 
     - parameter count: (query) Limit the count of objects in the response. See [Count](#count \&quot;Description of the syntax of the &#x60;count&#x60; parameter\&quot;). (optional, default to 10)
     - parameter cursor: (query) The cursor, or position, for the next page of objects. See [Cursor](#cursor \&quot;Description of the syntax of the &#x60;cursor&#x60; parameter\&quot;). (optional)
     - parameter _where: (query) Include in the response only objects where certain conditions are true. See [Where](#where \&quot;Description of the syntax of the &#x60;where&#x60; parameter\&quot;). (optional)
     - parameter select: (query) Include in the response only selected attributes of the object, or exclude from the response selected attributes of the object. See [Select](#select \&quot;Description of the syntax of the &#x60;select&#x60; parameter\&quot;). (optional)

     - returns: RequestBuilder<MsgVpnClientProfilesResponse> 
     */
    public class func getMsgVpnClientProfilesWithRequestBuilder(msgVpnName msgVpnName: String, count: Int32? = nil, cursor: String? = nil, _where: [String]? = nil, select: [String]? = nil) -> RequestBuilder<MsgVpnClientProfilesResponse> {
        var path = "/msgVpns/{msgVpnName}/clientProfiles"
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
 
        let requestBuilder: RequestBuilder<MsgVpnClientProfilesResponse>.Type = solace_semp_clientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}