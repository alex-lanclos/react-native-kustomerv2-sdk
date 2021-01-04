#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(KustomerSDK, NSObject)

RCT_EXTERN_METHOD(identify:(NSString *)jwt)

RCT_EXTERN_METHOD(presentSupport)

RCT_EXTERN_METHOD(openNewConversation)

RCT_EXTERN_METHOD(openConversationsCount)

RCT_EXTERN_METHOD(logout)

//RCT_EXTERN_METHOD(describeCustomer:(NSArray *)custom)

@end
