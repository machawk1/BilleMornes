//
//  Deck.h
//  billemornes
//
//  Created by Mat Kelly on 10/4/12.
//

#import <Foundation/Foundation.h>

@interface Deck : NSObject

@property (nonatomic, retain) NSMutableArray *undrawnCards;
@property (nonatomic, retain) NSMutableArray *discardedCards;

-(void)shuffle;
-(void)dealTo:(id)player;

@end
