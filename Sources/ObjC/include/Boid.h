#import <Foundation/Foundation.h>
#import "Vector.h"

NS_ASSUME_NONNULL_BEGIN

@interface Boid : NSObject
@property Vector *position;
@property Vector *velocity;
- (instancetype) initWithPosition:(Vector*) position velocity:(Vector*) velocity;
@end

NS_ASSUME_NONNULL_END
