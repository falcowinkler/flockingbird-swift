#ifndef FlockSimulation_h
#define FlockSimulation_h
#import <Foundation/Foundation.h>
#include "Flock.h"
#include "FlockSimulationParameters.h"

@interface FlockSimulation: NSObject
@property (nonatomic, strong, nonnull) Flock* currentFlock;
- (void) step;
- (nonnull instancetype) initWithFlock:(nonnull Flock*) flock
          simulationParameters:(nonnull FlockSimulationParameters*) parameters;
@end

#endif /* FlockSimulation */
