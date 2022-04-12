

#import "Teacher.h"


@implementation Teacher

+ (void)load {
    // 把当前类注册进Zoo
    [Zoo registerAnimalTypeWithType:[Teacher class]];
}

- (void)walkWithStep:(NSInteger)withStep {
    NSLog(@"%ld", (long)withStep);
}

@end
