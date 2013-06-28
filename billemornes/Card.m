//
//  Card.m
//  billemornes
//
//  Created by Mat Kelly on 10/4/12.
//

#import "Card.h"

@implementation Card
@synthesize origin, delegate;

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    self.origin = frame;
    [self setBackgroundColor:[UIColor redColor]];
    return self;
}

-(void)showCardImage {
   /* UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0,0,100,100)];
    [button setTitle:@"Show View" forState:UIControlStateNormal];
    [self addSubview:button];
    [self setBackgroundColor:[UIColor redColor]];
    NSLog(@"done %@",NSStringFromCGRect(self.frame));*/
}

-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *aTouch = [touches anyObject];
    CGPoint location = [aTouch locationInView:self];
    CGPoint previousLocation = [aTouch previousLocationInView:self];
    self.frame = CGRectOffset(self.frame, location.x-previousLocation.x, location.y-    previousLocation.y);
}

//TODO: add logic to determine whether or not the drop point was valid
-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    self.frame = self.origin;
    NSLog(NSStringFromCGPoint([[touches anyObject] locationInView:self]));
    NSLog(@"%@ %@",NSStringFromCGRect(self.frame),NSStringFromCGRect(((UIView *)(self.delegate)).frame));
}




@end

@implementation HazardCard
@end


@implementation SafetyCard : Card
@end

@implementation RemedyCard : Card
@end

@implementation DistanceCard : Card

@synthesize distance;
@end









@implementation Hand : UIView

@synthesize cards;

-(id)init {
    self = [super init];
    Card *card1 = [[Card alloc] initWithFrame:[Hand getPositionOf:1]];
    Card *card2 = [[Card alloc] initWithFrame:[Hand getPositionOf:2]];
    Card *card3 = [[Card alloc] initWithFrame:[Hand getPositionOf:3]];
    Card *card4 = [[Card alloc] initWithFrame:[Hand getPositionOf:4]];
    Card *card5 = [[Card alloc] initWithFrame:[Hand getPositionOf:5]];
    Card *card6 = [[Card alloc] initWithFrame:[Hand getPositionOf:6]];
    Card *card7 = [[Card alloc] initWithFrame:[Hand getPositionOf:7]];
    self.cards = [NSMutableArray arrayWithObjects:
                  [[Card alloc] init],
                  card1,card2,card3,card4,card5,card6,card7,
                  nil];
    
    [self addSubview:card1];
    [self addSubview:card2];
    [self addSubview:card3];
    [self addSubview:card4];
    [self addSubview:card5];
    [self addSubview:card6];
    [self addSubview:card7];

    return self;
}

-(void)setCardsDelegate:(id)t {
    //set the delegate for each card to the player's tableau
    for(int i=1; i<self.cards.count; i++){
        [[self.cards objectAtIndex:i] setDelegate:t];
    }
}

/*-(NSArray *)getCards {
    //return [NSArray arrayWithObjects:card1,card2,card3,card4,card5,card6,card7,nil];
}*/

-(void)addCardAtIndex:(int)i {
    
}

-(Card *)getCard:(int)i {
    
    return (Card *)[self.cards objectAtIndex:i];
    /*switch (i) {
        case 1 : return self.card1;
        case 2 : return self.card2;
        case 3 : return self.card3;
        case 4 : return self.card4;
        case 5 : return self.card5;
        case 6 : return self.card6;
        case 7 : return self.card7;
        default : 
            @throw [NSException exceptionWithName:@"InvalidCardIndexException" reason: @"The index specified for the get request is beyond the bounds of the indexed collection in the hand." userInfo:nil];
            
    }*/
}


+ (CGRect)getPositionOf:(int)thisCardIndex {
    float width = 30;//relative to hand
    float height = 40;//relative to hand
    float x = 9; //relative to hand
    int y = 7 + (thisCardIndex-1) * 43;
    return CGRectMake(x, y, width, height);
}



@end