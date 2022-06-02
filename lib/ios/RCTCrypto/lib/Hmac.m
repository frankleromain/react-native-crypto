#import <CommonCrypto/CommonHMAC.h>
#import <CommonCrypto/CommonDigest.h>

#import "Shared.h"
#import "Hmac.h"

@implementation Hmac

+ (NSString *) hmac256: (NSString *)input key: (NSString *)key {
    NSData *keyData = [Shared fromHex:key];
    NSData* inputData = [input dataUsingEncoding:NSUTF8StringEncoding];
    void* buffer = malloc(CC_SHA256_DIGEST_LENGTH);
    CCHmac(kCCHmacAlgSHA256, [keyData bytes], [keyData length], [inputData bytes], [inputData length], buffer);
    NSData *nsdata = [NSData dataWithBytesNoCopy:buffer length:CC_SHA256_DIGEST_LENGTH freeWhenDone:YES];
    return [Shared toHex:nsdata];
}

+ (NSString *) hmac1: (NSString *)input key: (NSString *)key {
    NSData *keyData = [Shared fromHex:key];
    NSData *inputData = [[NSData alloc] initWithBase64EncodedString:input options:0];
    void* buffer = malloc(CC_SHA1_DIGEST_LENGTH);
    CCHmac(kCCHmacAlgSHA1, [keyData bytes], [keyData length], [inputData bytes], [inputData length], buffer);
    NSData *nsdata = [NSData dataWithBytesNoCopy:buffer length:CC_SHA1_DIGEST_LENGTH freeWhenDone:YES];
    return [nsdata base64EncodedStringWithOptions:0];
}
@end
