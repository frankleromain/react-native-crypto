#import <Foundation/Foundation.h>

@interface Pbkdf2 : NSObject
+ (NSString *) hash:(NSString *)password saltBase64: (NSString *)saltBase64 iterations: (int)iterations keyLen: (int)keyLen hash: (NSString *)hash;

+ (NSString *) hash64:(NSString *)passwordBase64 saltBase64: (NSString *)saltBase64 iterations: (int)iterations keyLen: (int)keyLen hash: (NSString *)hash;
@end
