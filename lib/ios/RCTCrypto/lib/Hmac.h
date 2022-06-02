#import <Foundation/Foundation.h>

@interface Hmac : NSObject
+ (NSString *) hmac256: (NSString *)input key: (NSString *)key;
+ (NSString *) hmac1: (NSString *)input key: (NSString *)key;
@end
