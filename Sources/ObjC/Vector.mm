#import "Vector.h"

@implementation Vector
- (instancetype) initWithX: (float) x y:(float) y z:(float)z {
    self = [super init];
    self.x = x;
    self.y = y;
    self.z = z;
    return self;
}
@end
