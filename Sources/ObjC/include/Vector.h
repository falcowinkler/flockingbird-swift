#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vector : NSObject
@property (nonatomic) double x;
@property (nonatomic) double y;
- (instancetype) initWithX: (double) x y:(double) y;
@end

NS_ASSUME_NONNULL_END
