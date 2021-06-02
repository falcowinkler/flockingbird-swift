#ifndef FlockSimulation_h
#define FlockSimulation_h
#import <Foundation/Foundation.h>
#include "Flock.h"
@interface FlockSimulation: NSObject
@property (nonatomic, strong) Flock* currentFlock;
- (void) step;
- (instancetype) initWithNumberOfBoids:(int) numberOfBoids maxX:(int) maxX maxY:(int) maxY;
@end

#endif /* FlockSimulation */
