//
//  SBMasterViewController.h
//  SwitchBoard
//
//  Created by Joe Hughes on 5/26/12.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface SBMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate> {
  UIActivityIndicatorView * uiBusy;
}

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
