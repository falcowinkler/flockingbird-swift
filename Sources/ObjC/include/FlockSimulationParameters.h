#ifndef FlockSimulationParameters_h
#define FlockSimulationParameters_h
#include "Vector.h"

@interface FlockSimulationParameters : NSObject
@property (nonatomic) float speedLimit;
@property (nonatomic) float forceLimit;
@property (nonatomic) float positionIncrementScalingFactor;
@property (nonatomic) float avoidanceRadius;
@property (nonatomic) float visionRange;
@property (nonatomic) float separationWeight;
@property (nonatomic) float alignmentWeight;
@property (nonatomic) float cohesionWeight;
@property (nonatomic) float avoidanceWeight;
@property (nonatomic) float directionWeight;
@property (nonatomic) bool  isTwoD;
@property (nonatomic) float maxX;
@property (nonatomic) float maxY;
@property (nonatomic) float maxZ;
@property (nonatomic, nonnull, strong) Vector* targetPosition;

- (nonnull instancetype) initWithSpeedLimit:(float) speedLimit
                         forceLimit:(float) forceLimit
     positionIncrementScalingFactor:(float) positionIncrementScalingFactor
                    avoidanceRadius:(float) avoidanceRadius
                        visionRange:(float) visionRange
                   separationWeight:(float) separationWeight
                    alignmentWeight:(float) alignmentWeight
                     cohesionWeight:(float) cohesionWeight
                    avoidanceWeight:(float) avoidanceWeight
                    directionWeight:(float) directionWeight
                             isTwoD:(bool) isTwoD
                               maxX:(float) maxX
                               maxY:(float) maxY
                               maxZ:(float) maxZ
                             targetPosition:(nullable Vector*) targetPosition;
- (nonnull instancetype) init;
- (nonnull instancetype) initFromDict:(nonnull NSDictionary*) dict;
@end

#endif /* FlockSimulationParameters_h */
