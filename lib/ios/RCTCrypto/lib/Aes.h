#import <Foundation/Foundation.h>

@interface Aes : NSObject
+ (NSString *) encrypt: (NSString *)clearText  key: (NSString *)key iv: (NSString *)iv;
+ (NSString *) decrypt: (NSString *)cipherText key: (NSString *)key iv: (NSString *)iv;
+ (NSString *) decryptTo64: (NSString *)cipherText key: (NSString *)key iv: (NSString *)iv;
@end
