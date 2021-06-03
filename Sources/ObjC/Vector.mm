#import "Vector.h"

@implementation Vector
- (instancetype) initWithX: (float) x y:(float) y {
    self = [super init];
    self.x = x;
    self.y = y;
    return self;
}
@end
