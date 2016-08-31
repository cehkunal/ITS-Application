//
//  ObjectiveCViewController.m
//  ITSapplication
//
//  Created by Kunal on 1/26/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import "ObjectiveCViewController.h"

@interface ObjectiveCViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)pageChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ObjectiveCViewController

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)pageChanged:(id)sender {
    
    switch (self.pageControl.currentPage) {
        case 0:
            self.label.text=@"Introduction";
            self.textView.text=@"Objective-C is a general-purpose, object-oriented programming language that adds Smalltalk-style messaging to the C programming language. This is the main programming language used by Apple for the OS X and iOS operating systems and their respective APIs, Cocoa and Cocoa Touch. Objective-C is general-purpose language that is developed on top of C Programming language by adding features of Small Talk programming language making it an object-oriented language. It is primarily used in developing iOS and Mac OS X operating systems as well as its applications.Initially, Objective-C was developed by NeXT for its NeXTSTEP OS from whom it was taken over by Apple for its iOS and Mac OS X.";
            break;
            
            case 1:
            self.label.text=@"Data Types";
            self.textView.text=@"Basic Types:They are arithmetic types and consist of the two types: (a) integer types and (b) floating-point types. 2	Enumerated types:They are again arithmetic types and they are used to define variables that can only be assigned certain discrete integer values throughout the program.3	The type void:The type specifier void indicates that no value is available.4	Derived types: They include (a) Pointer types, (b) Array types, (c) Structure types, (d) Union types and (e) Function types.The array types and structure types are referred to collectively as the aggregate types. The type of a function specifies the type of the function's return value.";
            break;
            
        case 2:
            
            self.label.text=@"Memory Management";
            self.textView.text=@"Memory management is one of the most important process in any programming language. It is the process by which the memory of objects are allocated when they are required and deallocated when they are no longer required.Managing object memory is a matter of performance; if an application doesn't free unneeded objects, its memory footprint grows and performance suffers.Objective-C Memory management techniques can be broadly classified into two types.Manual Retain-Release or MRRAutomatic Reference Counting or ARCManual Retain-Release or MRRIn MRR, we explicitly manage memory by keeping track of objects on our own. This is implemented using a model, known as reference counting, that the Foundation class NSObject provides in conjunction with the runtime environment.The only difference between MRR and ARC is that the retain and release is handled by us manually in former while its automatically taken care of in the latter.";
            
            break;
            
            case 3:
            
            self.label.text=@"Error Handling";
            self.textView.text=@"In Objective-C programming, error handling is provided with NSError class available in Foundation framework. An NSError object encapsulates richer and more extensible error information than is possible using only an error code or error string. The core attributes of an NSError object are an error domain (represented by a string), a domain-specific error code and a user info dictionary containing application specific information.NSErrorObjective-C programs use NSError objects to convey information about runtime errors that users need to be informed about. In most cases, a program displays this error information in a dialog or sheet. But it may also interpret the information and either ask the user to attempt to recover from the error or attempt to correct the error on its ownNSError Object consists of: Domain: The error domain can be one of the predefined NSError domains or an arbitrary string describing a custom domain and domain must not be nil. Code: The error code for the error.User Info: The userInfo dictionary for the error and userInfo may be nil.";
            break;
            
            
        case 4:
            self.label.text=@"Protocols";
            self.textView.text=@"Objective-C allows you to define protocols, which declare the methods expected to be used for a particular situation. Protocols are implemented in the classes conforming to the protocol.A simple example would be a network URL handling class, it will have a protocol with methods like processCompleted delegate method that intimates the calling class once the network URL fetching operation is over.            The methods under keyword @required must be implemented in the classes that conforms to the protocol and the methods under @optional keyword are optional to implement.";
            
            break;
            
        default:
            break;
    }
    
    
}
@end
