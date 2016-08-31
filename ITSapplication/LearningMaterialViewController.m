//
//  LearningMaterialViewController.m
//  ITSapplication
//
//  Created by Kunal on 1/26/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import "LearningMaterialViewController.h"

@interface LearningMaterialViewController ()
@property (weak, nonatomic) IBOutlet UIPickerView *picker;

@end

@implementation LearningMaterialViewController

- (void)viewDidLoad
{
    learningMaterial = [NSArray arrayWithObjects:@"Objective C",@"iOS Programming",@"C Programming", nil];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return learningMaterial.count;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return learningMaterial[row];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    learningMaterialSelected=learningMaterial[row];
}
- (IBAction)SubmitClicked:(id)sender {
    if(learningMaterialSelected!=NULL){
    [self performSegueWithIdentifier:learningMaterialSelected sender:self];
    }
    else{
        learningMaterialSelected=@"Objective C";
        [self performSegueWithIdentifier:learningMaterialSelected sender:self];
    }
    }
@end
