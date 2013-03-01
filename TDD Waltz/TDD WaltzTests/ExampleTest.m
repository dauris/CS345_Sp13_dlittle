/**
 @file ExampleTest.m
*/

    // Class under test
#import "Example.h"

    // Collaborators

    // Test support
#import <SenTestingKit/SenTestingKit.h>

// Comment the next two lines to disable OCHamcrest (for test assertions)
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

// Comment the next two lines to disable OCMockito (for mock objects)
#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>

/**
 @brief For testing <#ExampleTest#>
 */
@interface ExampleTest : SenTestCase
@end

@implementation ExampleTest
{
    NSUserDefaults* mockUserDefaults;
    Example* sut;
}

-(void)setUp {
    
    [super setUp];
    mockUserDefaults = mock([NSUserDefaults class]);
    sut = [[Example alloc]initWithUserDefauts:mockUserDefaults];
    [given([mockUserDefaults objectForKey:@"currentReminderId"])willReturn:nil];
}
- (void)testNextReminderIdWithNoCurrentReminderIdUserDefaultsShouldReturnZero {
    
        [verify(mockUserDefaults)setObject:@0 forKey:@"currentReminderId"];
}

-(void)tearDown {
    
    sut = nil;
    [super tearDown];
}


@end
