//
//  inventoryViewController.m
//  battleEngine
//
//  Created by Louis Tur on 1/15/14.
//  Copyright (c) 2014 Louis Tur. All rights reserved.
//

#import "inventoryViewController.h"
#import "Container.h"

@interface inventoryViewController ()

@end

@implementation inventoryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/***************************************************************
 
 Segue Controllers
 
 **************************************************************/

- (IBAction)returnFromInventory:(UIBarButtonItem *)sender {
    [self.delegate inventoryViewControllerDidFinish:self];
}


/***************************************************************
 
 TableView Controllers
 
 **************************************************************/

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    //NSLog(@"In the method at least");
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"inventoryCell"];
    
    NSArray * contents = [self.playerBag arrayOfBagContents];
    //cell.textLabel.text = @"This is a cell";
    // needs to populate cells with text of container objects

    return cell;
}

/***************************************************************
 
        Bag content methods
 
 
 **************************************************************/

-(void)currentBag:(Container *)bagToDisplay{
    if (_playerBag == nil) {
        _playerBag = bagToDisplay;
    }
    NSLog(@"%@",[self.playerBag displayBag]);
}
@end
