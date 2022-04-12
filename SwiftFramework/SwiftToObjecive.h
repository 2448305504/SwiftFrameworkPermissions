
#ifndef SwiftToObjecive_h
#define SwiftToObjecive_h

// SWIFT_PROTOCOL_NAMED 这个宏定义实际上是定义在 SwiftFramework-Swift.h
#import <SwiftFramework/SwiftFramework-Swift.h>


SWIFT_PROTOCOL_NAMED("Animal")
@protocol AnimalProtocol
- (nonnull instancetype)init;
- (void)walkWithStep:(NSInteger)withStep;
@end


SWIFT_CLASS_NAMED("Zoo")
@interface Zoo : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
+ (void)registerAnimalTypeWithType:(Class <AnimalProtocol> _Nonnull)type;
@end


#endif /* SwiftToObjecive_h */
