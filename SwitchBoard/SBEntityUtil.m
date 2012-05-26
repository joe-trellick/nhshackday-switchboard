//
//  SBEntityUtil.m
//  SwitchBoard
//
//  Created by Joe Hughes on 5/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SBEntityUtil.h"

@implementation SBEntityUtil
+ (NSString*)titleForEntry:(id)entry {
  return [NSString stringWithFormat:@"%@ %@", [[entry valueForKey:@"firstName"] description], [[entry valueForKey:@"lastName"] description]];
}

@end
