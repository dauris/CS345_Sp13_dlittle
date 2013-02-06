/**
 @file GameTest.m
*/

    // Class under test
#import "Game.h"

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
 @brief For testing GameTest
 */
@interface GameTest : SenTestCase
-(void)rollWithPinsCount:(int)pins;

-(int)score;
@end

@implementation GameTest
{
    // test fixture ivars go here
}
-(void)testGutterGame{
    Game *game=[[Game alloc] init];
    for (int i = 0; i<20; ++i)
        [game rollWithPinCount:0];
    STAssertEquals([game score], 0, nil);
}

-(void)testAllOnes {
    Game *game=[[Game alloc] init];
    for (int i=0; i<20; ++i) {
        [game rollWithPinCount:1];
        STAssertEquals([game score], 20, nil);
    }
}
- (void)setUp
{
    [super setUp];
    set up
}

- (void)tearDown
{
    tear down
    [super tearDown];
}

- (void)testFooShouldBar
{
    // given
    
    // when
    
    // then
    STFail(@"Unit tests are not implemented yet in GameTest");
}


@end
