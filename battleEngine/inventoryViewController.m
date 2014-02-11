//
//  inventoryViewController.m
//  battleEngine
//
//  Created by Louis Tur on 1/15/14.
//  Copyright (c) 2014 Louis Tur. All rights reserved.
//

#import "inventoryViewController.h"
#import "Container.h"
#import "Sword.h"
#import "Potion.h"

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
    return [[self.playerBag arrayOfBagContents] count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"inventoryCell"];
    
    NSArray * bag = [[[self.playerBag getBag] bagContents] allObjects];
    NSArray * contents = [self.playerBag arrayOfBagContents];
    NSLog(@"%lu", indexPath.row);
    cell.textLabel.text = contents[indexPath.row];
    id currentItem = [bag objectAtIndex:indexPath.row];
    
    //checks to see if it is a sword or potion
    if ([currentItem isMemberOfClass:[Sword class]]) {
        cell.imageView.image =  [UIImage imageNamed:@"sword-icon.png"];
        cell.detailTextLabel.text = @"Deals Damage";
    }else if ([currentItem isMemberOfClass:[Potion class]]){
        Potion * pot = currentItem;//basically if it passes the membership test, I know it's a potion, so I give it the proper pointer (so i can access it's properties)
        if (pot.potionType == Health) {
            cell.imageView.image =  [UIImage imageNamed:@"potion-2-icon.png"];
            cell.detailTextLabel.text = @"Heals HP";
        }else if (pot.potionType == Mana)
        {
            cell.imageView.image =  [UIImage imageNamed:@"potion-icon.png"];
            cell.detailTextLabel.text = @"Replenishes MP";
        }
    }


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
