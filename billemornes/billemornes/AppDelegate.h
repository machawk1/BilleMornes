//
//  AppDelegate.h
//  billemornes
//
//  Created by Mat Kelly on 10/4/12.
//

#import <UIKit/UIKit.h>

@class Game;

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    UIWindow *window;
    Game *game;
}

@property (strong, nonatomic) IBOutlet UIWindow *window;
@property (strong, nonatomic) IBOutlet Game *game;

@end
