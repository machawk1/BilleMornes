//
//  Game.h
//  billemornes
//
//  Created by Mat Kelly on 10/4/12.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Player.h"
#import <UIKit/UIKit.h>

@interface Game : UIViewController


@property (nonatomic, retain) Deck *deck;
@property (nonatomic, assign) bool coupFouree;
@property (nonatomic, retain) NSArray *players;
@property (nonatomic, retain) Player *activePlayer;
@property (nonatomic, assign) bool thousandMiles;

-(void)deal;

@end
