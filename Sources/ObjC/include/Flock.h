#import <Foundation/Foundation.h>
#import "Boid.h"

@interface Flock : NSObject
@property NSSet<Boid*>* boids;
- (instancetype) initWithNumberOfBoids:(int) numberOfBoids maxX:(int) maxX maxY:(int) maxY;
@end
