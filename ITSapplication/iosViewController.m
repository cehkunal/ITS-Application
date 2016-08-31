//
//  iosViewController.m
//  ITSapplication
//
//  Created by Kunal on 1/26/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import "iosViewController.h"

@interface iosViewController ()
- (IBAction)iOSOptionChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation iosViewController


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

- (IBAction)iOSOptionChanged:(id)sender {
    
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            self.textView.text=@"Xcode is Apple’s integrated development environment (IDE) that you use to build apps for Apple products including the iPad, iPhone, Apple Watch, and Mac. Xcode provides tools to manage your entire development workflow—from creating your app, to testing, optimizing, and submitting it to the App Store.Single-Window InterfaceThe Xcode interface integrates code editing, user interface design, asset management, testing, and debugging within a single workspace window. The window reconfigures its content as you work. For example, select a file in one area, and an appropriate editor opens in another area. Select a symbol or user interface object, and its documentation appears in a nearby pane.You can focus on a task by displaying only what you need, such as only your source code or only your user interface layout. Or you can work with your code and UI layout side by side. You can further customize your environment by opening multiple windows and multiple tabs per window.Assisted Source Code EditingWhether you are using Swift, Objective-C, C, C++, or a mix, Xcode checks your source code as you type it. When Xcode notices a mistake, the source code editor highlights the error and when possible, offers to fix it. Xcode speeds up your typing with intelligent code completion. Reduce your typing further with ready-to-use code snippets and source file templates, either the ones provided or ones you add. With Swift, playgrounds let you experiment with code without building and running your app.";
            break;
            
            case 1:
            self.textView.text=@"What’s new in OS X El Capitan?OS X El Capitan brings lots of useful enhancements to your Mac. New ways to manage multiple windows and spaces. An even more powerful Spotlight for searching your Mac and beyond. Refinements to essential apps like Photos, Safari, Mail and Maps. An all-new Notes app for gathering your thoughts, photos, maps, web links and more. And faster performance across the board — from gaming to launching apps to accessing mail. What is OS X?OS X is the operating system that makes it possible to do all the things you do on a Mac. It’s simple to do amazing things and delightful to do the everyday things. And it’s designed specifically to take advantage of everything your Mac is capable of. So if you use an iPhone, not only will you feel right at home on a Mac, but your Mac will work with your iPhone in ways no other computer can.";
            break;
            
        default:
            break;
    }
    
    
    
}
@end
