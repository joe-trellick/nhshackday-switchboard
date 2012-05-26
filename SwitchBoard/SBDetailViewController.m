//
//  SBDetailViewController.m
//  SwitchBoard
//
//  Created by Joe Hughes on 5/26/12.
//

#import "SBDetailViewController.h"
#import "SBEntityUtil.h"

@interface SBDetailViewController ()
- (void)configureView;
@end

@implementation SBDetailViewController

@synthesize detailItem = _detailItem;
@synthesize detailDescriptionLabel = _detailDescriptionLabel;

#pragma mark - Managing the detail item

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	return @"Details";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"DetailCell";
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:CellIdentifier];
  }
  
  // Configure the cell...
  
  cell.selectionStyle = UITableViewCellSelectionStyleNone;
	cell.accessoryType = UITableViewCellAccessoryNone;
  
  NSString *label = @"Label";
  NSString *keyName = nil;
  
  switch ([indexPath indexAtPosition:1]) {
    case 0:
      label = @"First Name";
      keyName = @"firstName";
      break;
      
    case 1:
      label = @"Surname";
      keyName = @"lastName";
      break;
      
    case 2:
      label = @"Phone";
      keyName = @"number";
      break;
      
    case 3:
      label = @"Email";
      keyName = @"email";
      break;
      
  }
  cell.textLabel.text = label;
  if (self.detailItem) {
    cell.detailTextLabel.text = [[self.detailItem valueForKey:keyName] description];
  } else {
    cell.detailTextLabel.text = @"";
  }
  return cell;
}

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

  if (self.detailItem) {
    self.detailDescriptionLabel.text = [SBEntityUtil titleForEntry:self.detailItem];
    self.navigationItem.title = self.detailDescriptionLabel.text;
  }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  [self configureView];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
  self.detailDescriptionLabel = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
