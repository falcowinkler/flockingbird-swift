#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Position : NSObject
@property double x;
@property double y;
- (instancetype) initWithX: (double) x y:(double) y;
@end

NS_ASSUME_NONNULL_END
