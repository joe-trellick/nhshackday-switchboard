//
//  SBDetailViewController.h
//  SwitchBoard
//
//  Created by Joe Hughes on 5/26/12.
//

#import <UIKit/UIKit.h>

@interface SBDetailViewController : UITableViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
