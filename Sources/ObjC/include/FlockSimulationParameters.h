#ifndef FlockSimulationParameters_h
#define FlockSimulationParameters_h

@interface FlockSimulationParameters : NSObject
@property double speedLimit;
@property double forceLimit;
@property double positionIncrementScalingFactor;
@property double avoidanceRadius;
@property double visionRange;
@property double separationWeight;
@property double alignmentWeight;
@property double cohesionWeight;
@property double maxX;
@property double maxY;

- (nonnull instancetype) initWithSpeedLimit:(double) speedLimit
                         forceLimit:(double) forceLimit
     positionIncrementScalingFactor:(double) positionIncrementScalingFactor
                    avoidanceRadius:(double) avoidanceRadius
                        visionRange:(double) visionRange
                   separationWeight:(double) separationWeight
                    alignmentWeight:(double) alignmentWeight
                     cohesionWeight:(double) cohesionWeight
                               maxX:(double) maxX
                               maxY:(double) maxY;
- (nonnull instancetype) init;
- (nonnull instancetype) initFromDict:(nonnull NSDictionary*) dict;
@end

#endif /* FlockSimulationParameters_h */
