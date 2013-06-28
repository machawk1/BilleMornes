//
//  Card.h
//  billemornes
//
//  Created by Mat Kelly on 10/4/12.
//

#import <Foundation/Foundation.h>

@interface Card : UIView{
    CGPoint offset;
    CGPoint locationBeforeDrag;
    
    
}

- (void)showCardImage;
- (void)setDelegate:(id)t;
@property (nonatomic, assign) CGRect origin;
@property (nonatomic, assign) id delegate;
 //- (void)addCardAtIndex:(int)i;
    
@end


@interface HazardCard : Card
@end

@interface SafetyCard : Card
@end

@interface RemedyCard : Card
@end

@interface DistanceCard : Card

@property (nonatomic, assign) int distance;
@end

@interface Hand : UIView
   @property (nonatomic, assign) NSMutableArray *cards; 

//- (NSArray *)getCards;
- (Card *)getCard:(int)i;
- (void)setCardsDelegate:(id)t;
+ (CGRect)getPositionOf:(int)thisCardIndex;

@end