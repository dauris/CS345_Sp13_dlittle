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
    
    NSNumber* reminderId = [_userDefaults objectForKey:@"currentReminder"];
    if (reminderId) {
        return @([reminderId integerValue] + 1);
    }
    [_userDefaults setObject:@0 forKey:@"currentReminderId"];
    return @0;
}
@end
