#import "Flock.h"
#import <Foundation/Foundation.h>
#import "FlockSimulation.h"
#import "Boid.h"
#include "../CPP/src/flockingbird.hpp"

@interface Flock ()
@end

@implementation Flock

- (instancetype) initWithNumberOfBoids:(int) numberOfBoids maxX:(int) maxX maxY:(int) maxY {
    self = [super init];
    return self;
}

@end
