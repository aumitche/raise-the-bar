//
//  MusicTableViewController.m
//  raise-the-bar
//
//  Created by Mitchell Au on 2015–07–18.
//  Copyright (c) 2015 GARY. All rights reserved.
//

#import "MusicTableViewController.h"

@interface MusicTableViewController () {
	AppDelegate* delegate;
}

@end

@implementation MusicTableViewController

@synthesize genres;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	delegate = (AppDelegate*) [[UIApplication sharedApplication] delegate];
	
	genres = [[NSMutableArray alloc] init];
	
	Music* alternative = [[Music alloc] init];
	alternative.genre = @"Alternative/Indie";
	[genres addObject:alternative];
	Music* classical = [[Music alloc] init];
	classical.genre = @"Classical";
	[genres addObject:classical];
	Music* country = [[Music alloc] init];
	country.genre = @"Country";
	[genres addObject:country];
	Music* dance = [[Music alloc] init];
	dance.genre = @"Dance";
	[genres addObject:dance];
	Music* electronic = [[Music alloc] init];
	electronic.genre = @"Electronic";
	[genres addObject:electronic];
	Music* hipHop = [[Music alloc] init];
	hipHop.genre = @"Hip-Hop";
	[genres addObject:hipHop];
	Music* jazz = [[Music alloc] init];
	jazz.genre = @"Jazz";
	[genres addObject:jazz];
	Music* pop = [[Music alloc] init];
	pop.genre = @"Pop";
	[genres addObject:pop];
	Music* rhythmAndBlues = [[Music alloc] init];
	rhythmAndBlues.genre = @"R&B";
	[genres addObject:rhythmAndBlues];
	Music* rock = [[Music alloc] init];
	rock.genre = @"Rock";
	[genres addObject:rock];
	
	for (int i = 0; i < 10; i++) {
		Music* genre = genres[i];
		genre.like = NO;
	}
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return genres.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    
	Music* genre = [genres objectAtIndex:indexPath.row];
	cell.textLabel.text = genre.genre;
	
	if (genre.like) {
		cell.accessoryType = UITableViewCellAccessoryCheckmark;
	} else {
		cell.accessoryType = UITableViewCellAccessoryNone;
	}
	
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	delegate.user.music = [genres copy];
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	[tableView deselectRowAtIndexPath:indexPath animated:NO]; //If a cell is touched don't actually select it
	Music *genreSelected = [self.genres objectAtIndex:indexPath.row];
	genreSelected.like = !genreSelected.like;
	[tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
	
}

@end
