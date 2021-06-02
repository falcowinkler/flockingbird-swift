#import <Foundation/Foundation.h>
#import "FlockSimulation.h"

@interface FlockSimulation ()

@end

@implementation FlockSimulation

- (instancetype) initWithNumberOfBoids:(int) numberOfBoids maxX:(int)maxX maxY:(int)maxY {
    self = [super init];
    return self;
}

- (Flock*) currentFlock {
};
- (void) step {
    // advance the simulation by one timestep
}
@end
