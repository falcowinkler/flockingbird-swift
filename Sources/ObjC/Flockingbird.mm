#import <Foundation/Foundation.h>
#import "Flockingbird.h"
#import "../CPP/src/flockingbird.h"

//using Flock = FlockSimulation :: Flock;

@implementation Flockingbird
- (Flock*) currentFlock {
    return [[Flock alloc] init];
};
@end
