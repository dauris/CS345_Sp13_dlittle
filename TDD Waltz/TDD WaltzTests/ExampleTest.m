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
    // test fixture ivars go here
}

//- (void)setUp
//{
//    [super setUp];
//    <#set up#>
//}

- (void)testNextReminderIdWithNoCurrentReminderIdUserDefaultsShouldReturnZero {
    
    // given
    NSUserDefaults* mockUserDefaults = mock([NSUserDefaults class]);
    Example* sut = [[Example alloc]initWithUserDefauts:mockUserDefaults];
    [given([mockUserDefaults objectForKey:@"currentReminderId"]) willReturn:nil];
    // when
    [sut nextReminderId];
    // then
    [verify(mockUserDefaults)setObject:@0 forKey:@"currentReminderId"];
}

//- (void)tearDown
//{
//    
//    [super tearDown];
//}


@end
