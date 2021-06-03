#import "Boid.h"
#import "Vector.h"

@implementation Boid
- (instancetype)initWithPosition:(nonnull Vector*) position velocity:(nonnull Vector*)velocity {
    self = [super init];
    self.position = position;
    self.velocity = velocity;
    return self;
}
@end
