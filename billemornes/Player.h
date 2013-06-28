//
//  Player.h
//  billemornes
//
//  Created by Mat Kelly on 10/4/12.
//

#import <Foundation/Foundation.h>
#import "Tableau.h"

@interface Player : NSObject

@property (nonatomic, retain) IBOutlet Hand *hand;
@property (nonatomic, retain) IBOutlet Tableau *tableau;

-(id)initAsPlayer:(int)i;
-(bool)isMoving;
-(int)computeScore;

@end
