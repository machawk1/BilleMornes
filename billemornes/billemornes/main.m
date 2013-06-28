//
//  main.m
//  billemornes
//
//  Created by Mat Kelly on 10/4/12.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char *argv[])
{
    int retVal = 0;
    @autoreleasepool {
        NSString *classString = NSStringFromClass([AppDelegate class]);
        NSLog(@"Creating with class %@",classString);
        @try {
            retVal = UIApplicationMain(argc, argv, nil, @"AppDelegate");
            NSLog(@"retval = %d",retVal);
        }
        @catch (NSException *exception) {
            NSLog(@"Exception - %@",[exception description]);
            exit(EXIT_FAILURE);
        }
    }
    return retVal;
    
}
