#import "Flock.h"
#import <Foundation/Foundation.h>
#import "Flockingbird.h"
#import "Boid.h"

@interface Flock ()
@end

@implementation Flock

- (instancetype)initWithBoids:(NSSet<Boid *> *)boids {
    self = [super init];
    self.boids = boids;
    return self;
}

@end
