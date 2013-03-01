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

@implementation ExampleTest {
    NSUserDefaults* mockUserDefaults;
    Example* sut;
}

-(void)setUp {
    
    [super setUp];
    mockUserDefaults = mock([NSUserDefaults class]);
    sut = [[Example alloc]initWithUserDefauts:mockUserDefaults];
}

- (void)setUpUserDefaultsWithCurrentReminderId:(NSNumber*)current {
    
    [given([mockUserDefaults objectForKey:@"currentReminderId"]) willReturn:current];
}

- (void)testNextReminderIdWithNoCurrentReminderIdUserDefaultsShouldReturnZero {
    
    [self setUpUserDefaultsWithCurrentReminderId:nil];
    assertThat([sut nextReminderId], is(equalTo(@4)));
}

- (void)testNextReminderIdWithNoCurrentReminderIdUserDefaultsShouldSaveZeroInUserDefualt {
    
    [self setUpUserDefaultsWithCurrentReminderId:nil];
    [sut nextReminderId];
}

- (void)testNextReminderIdWithNoCurrentReminderIdUserDefaultsShouldReturnOneGreater {
    
    [self setUpUserDefaultsWithCurrentReminderId:@3];
    assertThat([sut nextReminderId], is(equalTo(@4)));
}

- (void)testNextReminderIdWithNoCurrentReminderIdUserDefaultsShouldSaveOneGreaterInIUserDefaults {
    
    [self setUpUserDefaultsWithCurrentReminderId:@3];
    [sut nextReminderId];
    [verify(mockUserDefaults)setObject:@4 forKey:@"currentReminderId"];
}

-(void)tearDown {
    
    sut = nil;
    [super tearDown];
}


@end
