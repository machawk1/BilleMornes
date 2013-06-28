//
//  Player.m
//  billemornes
//
//  Created by Mat Kelly on 10/4/12.
//

#import "Player.h"
#import <QuartzCore/QuartzCore.h>

@implementation Player

@synthesize tableau, hand;

-(id)initAsPlayer:(int)i {
    self = [super init];
    self.hand = [[Hand alloc] init];
    
    float x = 0; float y = 0;
    float w = 45; float h = 320;  
    float tableauX = 75;
    if(i == 2){
        x = 435;
        tableauX = 300;
    }
    self.hand.frame = CGRectMake(x, y, w, h);
    [self.hand setBackgroundColor:[UIColor blueColor]];
    
    Tableau *t = [[Tableau alloc] initWithFrame:CGRectMake(tableauX, 100, 100, 100)];
    [t setBackgroundColor:[UIColor yellowColor]];
    self.tableau = t;
    id tt = self.tableau;
    [self.hand setCardsDelegate:tt];
    
    
    for(int i=1; i<self.hand.cards.count; i++){
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button addTarget:self 
                   action:nil
                forControlEvents:UIControlEventTouchDown];
        [button setTitle:@"Show View" forState:UIControlStateNormal];
        CGRect r = ((Card *)[self.hand getCard:1]).frame;
        r.origin.x = 0; r.origin.y = 0;
        button.frame = r;
        [button setBackgroundColor:[UIColor whiteColor]];
        [button.layer setCornerRadius:5];
        [[button layer] setMasksToBounds:YES];

    
       // [((Card *)[self.hand getCard:i]) addSubview:button];
    }
    
    //[((Card *)[self.hand getCard:1]) addSubview:button];
    //[((Card *)[self.hand getCard:1]) setBackgroundColor:[UIColor greenColor]];
    //[((Card *)[self.hand getCard:2]) setBackgroundColor:[UIColor yellowColor]];
    
    
    
    
    
    
    return self;
}


//TODO: implement isMoving()
-(bool)isMoving {return false;}
//TODO implement computeScore()
-(int)computeScore {return -1;};

@end
