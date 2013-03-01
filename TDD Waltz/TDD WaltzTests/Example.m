/**
 @file Example.m
 */

#import "Example.h"

@implementation Example {
    
    NSUserDefaults* _userDefaults;
}

-(id)initWithUserDefauts:(NSUserDefaults *)userDefault {
    
    self =  [self init];
    if (self) {
        _userDefaults = userDefault;
    }
    return self;
}

-(NSNumber*)nextReminderId {
    
    [_userDefaults setObject:@0 forKey:@"currentReminderId"];
    return @0;
}
@end
