//
//  GameViewController.m
//  Taboo
//
//  Created by Benjamin Lui on 7/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        // create a progress bar
        UIProgressView *progressBar = [[UIProgressView alloc] initWithFrame:CGRectMake(0.25, 34.0, 0.5, 9.0)];
        progressBar.progress = 0.0;
        progressBar.progressViewStyle = UIProgressViewStyleBar;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(segueToTransitionViewController) userInfo:nil repeats:NO];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)segueToTransitionViewController
{
    [self performSegueWithIdentifier:@"SegueToTransition" sender:self];
    
}

@end
