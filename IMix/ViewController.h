//
//  ViewController.h
//  IMix
//
//  Created by Humza Ahmed on 22/01/2015.
//  Copyright (c) 2015 Humza Ahmed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
/*Property for the Labels:*/
@property (weak, nonatomic) IBOutlet UILabel *RedSliderValue;
@property (weak, nonatomic) IBOutlet UILabel *GreenSliderValue;
@property (weak, nonatomic) IBOutlet UILabel *BlueSliderValue;
@property (weak, nonatomic) IBOutlet UILabel *AlphaChannelValue;
@property (weak, nonatomic) IBOutlet UILabel *HexColourValue;

/*Property for the View that show's the Colour Mix*/
@property (weak, nonatomic) IBOutlet UIView *ColourMixerView;

/*Property for the Actual Sliders*/
@property (weak, nonatomic) IBOutlet UISlider *RedSlider;
@property (weak, nonatomic) IBOutlet UISlider *GreenSlider;
@property (weak, nonatomic) IBOutlet UISlider *BlueSlider;
@property (weak, nonatomic) IBOutlet UISlider *AlphaChannelSlider;

@end

