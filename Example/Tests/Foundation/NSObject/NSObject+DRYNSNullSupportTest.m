//
//  NSObject+NSNullSupportTest.m
//  DRYUtilities
//
//  Created by Michael Seghers on 12/02/15.
//  Copyright (c) 2015 Michael Seghers. All rights reserved.
//

#import "DRYUtilitiesTests.h"
#import "NSObject+DRYNSNullSupport.h"

@interface NSObject_DRYNSNullSupportTest : XCTestCase

@end

@implementation NSObject_DRYNSNullSupportTest

- (void)testNSObjectsDefaultToNOForIsNSNull {
    assertThatBool([@"" dryIsNSNull], isFalse());
}

- (void)testNSNullIsYesForIsNull {
    assertThatBool([[NSNull null] dryIsNSNull], isTrue());
}

- (void)testNilIsYesForIsNull {
    NSString *string = nil;
    assertThatBool([string dryIsNSNull], isFalse());
}

- (void)testValueOrNullReturnsObjectForObjects {
    assertThat([@"" dryValueOrNil], is(equalTo(@"")));
}

- (void)testValueOrNullReturnsNilForNSNull {
    assertThat([[NSNull null] dryValueOrNil], is(nilValue()));
}



@end
