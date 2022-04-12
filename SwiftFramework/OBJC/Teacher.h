

#import <Foundation/Foundation.h>
// OC要遵循Swift协议
#import "SwiftToObjecive.h"
@interface Teacher : NSObject<AnimalProtocol>

- (void)walkWithStep:(NSInteger)withStep;

@end


