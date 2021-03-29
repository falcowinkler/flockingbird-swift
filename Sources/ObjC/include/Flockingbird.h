#ifndef Header_h
#define Header_h
#import <Foundation/Foundation.h>
#include "Flock.h"

@interface Flockingbird: NSObject
@property (nonatomic, strong) Flock* currentFlock;
- (void) step;
@end

#endif /* Header_h */
