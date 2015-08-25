//
//  ViewController.h
//  IMix
//
//  Created by Humza Ahmed on 22/01/2015.
//  Copyright (c) 2015 Humza Ahmed. All rights reserved.
//

/***********************************************************************
 IMix - Simple a colour palette to combine and mix a variety of colours through different channels.
 Copyright (C) 2015 Humza Ahmed
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.
 ***********************************************************************/

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

