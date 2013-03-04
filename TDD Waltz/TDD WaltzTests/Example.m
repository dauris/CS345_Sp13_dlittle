/**
 @file Example.m
 */

#import "Example.h"

static NSString* const currentReminderIdKey = @"currentReminderId";

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
    
    NSNumber* reminderId = [self determineNextreminderIdFromUserDefaults];
    [_userDefaults setObject:reminderId forKey: currentReminderIdKey];
    return reminderId;
}

-(NSNumber*) determineNextreminderIdFromUserDefaults {
    
    NSNumber* reminderId = [_userDefaults objectForKey: currentReminderIdKey];
    if (reminderId) {
        return @([reminderId integerValue] + 1);
    }
    else
        return @0;
}

@end
