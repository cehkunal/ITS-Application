//
//  LearningMaterialViewController.h
//  ITSapplication
//
//  Created by Kunal on 1/26/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LearningMaterialViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
{
    NSArray *learningMaterial;
    NSString *learningMaterialSelected;
}
- (IBAction)SubmitClicked:(id)sender;

@end
