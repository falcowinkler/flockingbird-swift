#import <Foundation/Foundation.h>
#import "Position.h"

NS_ASSUME_NONNULL_BEGIN

@interface Boid : NSObject
@property Position *position;
@property double bearing;
- (instancetype) initWithPosition:(Position*) position bearing:(double) bearing;
@end

NS_ASSUME_NONNULL_END
