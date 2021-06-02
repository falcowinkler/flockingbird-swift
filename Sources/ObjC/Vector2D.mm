#import "Vector.h"

@implementation Vector
- (instancetype) initWithX: (double) x y:(double) y {
    self = [super init];
    self.x = x;
    self.y = y;
    return self;
}
@end
