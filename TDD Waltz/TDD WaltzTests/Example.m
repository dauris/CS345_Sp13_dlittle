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
        reminderId = @([reminderId integerValue] + 1);
    }
    else
        reminderId = @0;
        [_userDefaults setObject:reminderId forKey:@"currentReminderId"];
        return reminderId;
}
@end
