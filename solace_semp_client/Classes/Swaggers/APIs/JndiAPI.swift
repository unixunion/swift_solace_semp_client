//
// JndiAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class JndiAPI: APIBase {
    /**
     Gets a list of JNDI Connection Factory objects.
     
     - parameter msgVpnName: (path) The msgVpnName of the Message VPN. 
     - parameter count: (query) Limit the count of objects in the response. See [Count](#count \&quot;Description of the syntax of the &#x60;count&#x60; parameter\&quot;). (optional, default to 10)
     - parameter cursor: (query) The cursor, or position, for the next page of objects. See [Cursor](#cursor \&quot;Description of the syntax of the &#x60;cursor&#x60; parameter\&quot;). (optional)
     - parameter _where: (query) Include in the response only objects where certain conditions are true. See [Where](#where \&quot;Description of the syntax of the &#x60;where&#x60; parameter\&quot;). (optional)
     - parameter select: (query) Include in the response only selected attributes of the object, or exclude from the response selected attributes of the object. See [Select](#select \&quot;Description of the syntax of the &#x60;select&#x60; parameter\&quot;). (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getMsgVpnJndiConnectionFactories(msgVpnName msgVpnName: String, count: Int32? = nil, cursor: String? = nil, _where: [String]? = nil, select: [String]? = nil, completion: ((data: MsgVpnJndiConnectionFactoriesResponse?, error: ErrorType?) -> Void)) {
        getMsgVpnJndiConnectionFactoriesWithRequestBuilder(msgVpnName: msgVpnName, count: count, cursor: cursor, _where: _where, select: select).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Gets a list of JNDI Connection Factory objects.
     - GET /msgVpns/{msgVpnName}/jndiConnectionFactories
     - Gets a list of JNDI Connection Factory objects.   Attribute|Identifying|Write-Only|Deprecated :---|:---:|:---:|:---: connectionFactoryName|x|| msgVpnName|x||    A SEMP client authorized with a minimum access scope/level of \"vpn/readonly\" is required to perform this operation.  This has been available since 2.2.
     - BASIC:
       - type: basic
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "messagingDefaultDeliveryMode" : "persistent",
    "connectionFactoryName" : "connectionFactoryName",
    "guaranteedReceiveAckTimeout" : 1,
    "transportReadTimeout" : 1,
    "transportReconnectRetryCount" : 7,
    "dtoReceiveSubscriberNetworkPriority" : 6,
    "messagingDefaultElidingEligibleEnabled" : true,
    "transportDirectTransportEnabled" : true,
    "transportReconnectRetryWait" : 1,
    "clientDescription" : "clientDescription",
    "guaranteedReceiveWindowSize" : 5,
    "dtoReceiveSubscriberLocalPriority" : 0,
    "transportCompressionLevel" : 9,
    "transportConnectRetryPerHostCount" : 2,
    "guaranteedSendAckTimeout" : 2,
    "transportReceiveBufferSize" : 6,
    "msgVpnName" : "msgVpnName",
    "transportKeepaliveEnabled" : true,
    "allowDuplicateClientIdEnabled" : true,
    "transportPort" : 1,
    "transportConnectRetryCount" : 3,
    "transportConnectTimeout" : 4,
    "dynamicEndpointCreateDurableEnabled" : true,
    "clientId" : "clientId",
    "messagingJmsxUserIdEnabled" : true,
    "guaranteedReceiveWindowSizeAckThreshold" : 5,
    "dynamicEndpointRespectTtlEnabled" : true,
    "messagingTextInXmlPayloadEnabled" : true,
    "guaranteedSendWindowSize" : 7,
    "transportKeepaliveInterval" : 1,
    "transportOptimizeDirectEnabled" : true,
    "transportTcpNoDelayEnabled" : true,
    "transportSendBufferSize" : 4,
    "transportKeepaliveCount" : 7,
    "xaEnabled" : true,
    "dtoSendEnabled" : true,
    "messagingDefaultDmqEligibleEnabled" : true,
    "dtoReceiveOverrideEnabled" : true,
    "transportMsgCallbackOnIoThreadEnabled" : true
  }, {
    "messagingDefaultDeliveryMode" : "persistent",
    "connectionFactoryName" : "connectionFactoryName",
    "guaranteedReceiveAckTimeout" : 1,
    "transportReadTimeout" : 1,
    "transportReconnectRetryCount" : 7,
    "dtoReceiveSubscriberNetworkPriority" : 6,
    "messagingDefaultElidingEligibleEnabled" : true,
    "transportDirectTransportEnabled" : true,
    "transportReconnectRetryWait" : 1,
    "clientDescription" : "clientDescription",
    "guaranteedReceiveWindowSize" : 5,
    "dtoReceiveSubscriberLocalPriority" : 0,
    "transportCompressionLevel" : 9,
    "transportConnectRetryPerHostCount" : 2,
    "guaranteedSendAckTimeout" : 2,
    "transportReceiveBufferSize" : 6,
    "msgVpnName" : "msgVpnName",
    "transportKeepaliveEnabled" : true,
    "allowDuplicateClientIdEnabled" : true,
    "transportPort" : 1,
    "transportConnectRetryCount" : 3,
    "transportConnectTimeout" : 4,
    "dynamicEndpointCreateDurableEnabled" : true,
    "clientId" : "clientId",
    "messagingJmsxUserIdEnabled" : true,
    "guaranteedReceiveWindowSizeAckThreshold" : 5,
    "dynamicEndpointRespectTtlEnabled" : true,
    "messagingTextInXmlPayloadEnabled" : true,
    "guaranteedSendWindowSize" : 7,
    "transportKeepaliveInterval" : 1,
    "transportOptimizeDirectEnabled" : true,
    "transportTcpNoDelayEnabled" : true,
    "transportSendBufferSize" : 4,
    "transportKeepaliveCount" : 7,
    "xaEnabled" : true,
    "dtoSendEnabled" : true,
    "messagingDefaultDmqEligibleEnabled" : true,
    "dtoReceiveOverrideEnabled" : true,
    "transportMsgCallbackOnIoThreadEnabled" : true
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

     - returns: RequestBuilder<MsgVpnJndiConnectionFactoriesResponse> 
     */
    public class func getMsgVpnJndiConnectionFactoriesWithRequestBuilder(msgVpnName msgVpnName: String, count: Int32? = nil, cursor: String? = nil, _where: [String]? = nil, select: [String]? = nil) -> RequestBuilder<MsgVpnJndiConnectionFactoriesResponse> {
        var path = "/msgVpns/{msgVpnName}/jndiConnectionFactories"
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
 
        let requestBuilder: RequestBuilder<MsgVpnJndiConnectionFactoriesResponse>.Type = solace_semp_clientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Gets a list of JNDI Queue objects.
     
     - parameter msgVpnName: (path) The msgVpnName of the Message VPN. 
     - parameter _where: (query) Include in the response only objects where certain conditions are true. See [Where](#where \&quot;Description of the syntax of the &#x60;where&#x60; parameter\&quot;). (optional)
     - parameter select: (query) Include in the response only selected attributes of the object, or exclude from the response selected attributes of the object. See [Select](#select \&quot;Description of the syntax of the &#x60;select&#x60; parameter\&quot;). (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getMsgVpnJndiQueues(msgVpnName msgVpnName: String, _where: [String]? = nil, select: [String]? = nil, completion: ((data: MsgVpnJndiQueuesResponse?, error: ErrorType?) -> Void)) {
        getMsgVpnJndiQueuesWithRequestBuilder(msgVpnName: msgVpnName, _where: _where, select: select).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Gets a list of JNDI Queue objects.
     - GET /msgVpns/{msgVpnName}/jndiQueues
     - Gets a list of JNDI Queue objects.   Attribute|Identifying|Write-Only|Deprecated :---|:---:|:---:|:---: msgVpnName|x|| queueName|x||    A SEMP client authorized with a minimum access scope/level of \"vpn/readonly\" is required to perform this operation.  This has been available since 2.2.
     - BASIC:
       - type: basic
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "queueName" : "queueName",
    "physicalName" : "physicalName",
    "msgVpnName" : "msgVpnName"
  }, {
    "queueName" : "queueName",
    "physicalName" : "physicalName",
    "msgVpnName" : "msgVpnName"
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
     - parameter _where: (query) Include in the response only objects where certain conditions are true. See [Where](#where \&quot;Description of the syntax of the &#x60;where&#x60; parameter\&quot;). (optional)
     - parameter select: (query) Include in the response only selected attributes of the object, or exclude from the response selected attributes of the object. See [Select](#select \&quot;Description of the syntax of the &#x60;select&#x60; parameter\&quot;). (optional)

     - returns: RequestBuilder<MsgVpnJndiQueuesResponse> 
     */
    public class func getMsgVpnJndiQueuesWithRequestBuilder(msgVpnName msgVpnName: String, _where: [String]? = nil, select: [String]? = nil) -> RequestBuilder<MsgVpnJndiQueuesResponse> {
        var path = "/msgVpns/{msgVpnName}/jndiQueues"
        path = path.stringByReplacingOccurrencesOfString("{msgVpnName}", withString: "\(msgVpnName)", options: .LiteralSearch, range: nil)
        let URLString = solace_semp_clientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "where": _where,
            "select": select
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<MsgVpnJndiQueuesResponse>.Type = solace_semp_clientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Gets a list of JNDI Topic objects.
     
     - parameter msgVpnName: (path) The msgVpnName of the Message VPN. 
     - parameter count: (query) Limit the count of objects in the response. See [Count](#count \&quot;Description of the syntax of the &#x60;count&#x60; parameter\&quot;). (optional, default to 10)
     - parameter cursor: (query) The cursor, or position, for the next page of objects. See [Cursor](#cursor \&quot;Description of the syntax of the &#x60;cursor&#x60; parameter\&quot;). (optional)
     - parameter _where: (query) Include in the response only objects where certain conditions are true. See [Where](#where \&quot;Description of the syntax of the &#x60;where&#x60; parameter\&quot;). (optional)
     - parameter select: (query) Include in the response only selected attributes of the object, or exclude from the response selected attributes of the object. See [Select](#select \&quot;Description of the syntax of the &#x60;select&#x60; parameter\&quot;). (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getMsgVpnJndiTopics(msgVpnName msgVpnName: String, count: Int32? = nil, cursor: String? = nil, _where: [String]? = nil, select: [String]? = nil, completion: ((data: MsgVpnJndiTopicsResponse?, error: ErrorType?) -> Void)) {
        getMsgVpnJndiTopicsWithRequestBuilder(msgVpnName: msgVpnName, count: count, cursor: cursor, _where: _where, select: select).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Gets a list of JNDI Topic objects.
     - GET /msgVpns/{msgVpnName}/jndiTopics
     - Gets a list of JNDI Topic objects.   Attribute|Identifying|Write-Only|Deprecated :---|:---:|:---:|:---: msgVpnName|x|| topicName|x||    A SEMP client authorized with a minimum access scope/level of \"vpn/readonly\" is required to perform this operation.  This has been available since 2.2.
     - BASIC:
       - type: basic
       - name: basicAuth
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "physicalName" : "physicalName",
    "topicName" : "topicName",
    "msgVpnName" : "msgVpnName"
  }, {
    "physicalName" : "physicalName",
    "topicName" : "topicName",
    "msgVpnName" : "msgVpnName"
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

     - returns: RequestBuilder<MsgVpnJndiTopicsResponse> 
     */
    public class func getMsgVpnJndiTopicsWithRequestBuilder(msgVpnName msgVpnName: String, count: Int32? = nil, cursor: String? = nil, _where: [String]? = nil, select: [String]? = nil) -> RequestBuilder<MsgVpnJndiTopicsResponse> {
        var path = "/msgVpns/{msgVpnName}/jndiTopics"
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
 
        let requestBuilder: RequestBuilder<MsgVpnJndiTopicsResponse>.Type = solace_semp_clientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
