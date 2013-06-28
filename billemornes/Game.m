//
//  Game.m
//  billemornes
//
//  Created by Mat Kelly on 10/4/12.
//

#import "Game.h"

@implementation Game

@synthesize deck, coupFouree, players, activePlayer, thousandMiles;

/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    NSLog(@"Game.m's initWithNibName %@",nibNameOrNil);
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}*/


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)loadView {
    [super loadView];
    NSLog(@"loadView");
}


- (void)viewDidLoad
{
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
    [super viewDidLoad];

    // Do any additional setup after loading the view from its nib.
    Player *player1 = [[Player alloc] initAsPlayer:1];
    Player *player2 = [[Player alloc] initAsPlayer:2];
    self.players = [NSArray arrayWithObjects:player1, player2, nil];
    
    [self.view addSubview:((Player *)[self.players objectAtIndex:0]).tableau];
    [self.view addSubview:((Player *)[self.players objectAtIndex:0]).hand];
    [self.view addSubview:((Player *)[self.players objectAtIndex:1]).tableau];
    [self.view addSubview:((Player *)[self.players objectAtIndex:1]).hand];
    
    //[self deal];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

-(void)deal {
    Hand *p1h = ((Player *)[self.players objectAtIndex:0]).hand;
    Card *card1 = [p1h getCard:1];
    card1.frame = [Hand getPositionOf:1];
    [self.view addSubview:card1];
    //[card1 showCardImage];
}


@end
