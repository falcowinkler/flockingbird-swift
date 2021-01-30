#import <Foundation/Foundation.h>
#import "Flock.h"
#import "../CPP/src/flockingbird.h"

using Flock = FlockSimulation :: Flock;

@implementation Flockingbird
- (int) my_num {
    return Flock().do_something();
};
@end
