//
//  Tableau.h
//  billemornes
//
//  Created by Mat Kelly on 10/4/12.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Tableau : UIView

@property (nonatomic, retain) NSMutableArray *safties;
@property (nonatomic, retain) NSMutableArray *distanceCards;
@property (nonatomic, assign) bool rolling;
@property (nonatomic, retain) IBOutlet Card *speedLimit;
@property (nonatomic, retain) IBOutlet Card *hazard;

@end
