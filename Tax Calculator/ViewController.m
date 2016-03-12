//
//  ViewController.m
//  Tax Calculator
//
//  Created by David Iskander on 3/11/16.
//  Copyright © 2016 DIskander. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *resultLabel;

@property double sfTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sfTax = 0.0875;
    self.chiTax = 0.1025;
    self.nyTax = 0.08875;

}

- (IBAction)onCalculateButtonTapped:(id)sender {
    NSString *enteredText = self.priceTextField.text;
    int enteredValue = enteredText.intValue;
    
    if (self.segmentedControl.selectedSegmentIndex == 0){
        double result = enteredValue * self.sfTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    } else if (self.segmentedControl.selectedSegmentIndex == 1){
        double result = enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    } else {
        double result = enteredValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    }
    
    
}


@end
