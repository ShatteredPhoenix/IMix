//
//  ViewController.m
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

#import "ViewController.h"


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*Adding a Border to the ColourMixerView:
     Using Layer.Border properties and UI Colour*/
    self.ColourMixerView.layer.borderColor = [UIColor blackColor].CGColor;
    
    /*Controlling the Width of the border around the View:*/
    self.ColourMixerView.layer.borderWidth = 1.0f;
}

/*Red Slider Action: */
- (IBAction)RedValueCharged:(UISlider *)sender {
    /*Show the Value of the Slider, inside the label using 3.0f size*/
    self.RedSliderValue.text = [NSString stringWithFormat:@"%3.0f", sender.value];
    
    /*Call the Colour Update Method/Function When Slider is Moved*/
    [self UpdateColourMixView];
}

/*Green Slider Action*/
- (IBAction)GreenSliderCharged:(UISlider *)sender {
    /*Show the Value of the Slider, inside the label using 3.0f size*/
    self.GreenSliderValue.text = [NSString stringWithFormat:@"%3.0f", sender.value];
    
    /*Call the Colour Update Method/Function When Slider is Moved*/
    [self UpdateColourMixView];
}

/*Blue Slider Action*/
- (IBAction)BlueSliderCharged:(UISlider *)sender {
    /*Show the Value of the Slider, inside the label using 3.0f size*/
    self.BlueSliderValue.text = [NSString stringWithFormat:@"%3.0f", sender.value];
    
    /*Call the Colour Update Method/Function When Slider is Moved*/
    [self UpdateColourMixView];
}
/*Alpha Channel Slider Action*/
- (IBAction)AlphaChannelCharged:(UISlider *)sender {
    /*Show the Value of the Slider, inside the label using 3.0f size*/
    self.AlphaChannelValue.text = [NSString stringWithFormat:@"%.1f%%", sender.value*100];
    
    /*Call the Colour Update Method/Function When Slider is Moved*/
    [self UpdateColourMixView];
}

/*Method to Update the Colour View*/
-(void) UpdateColourMixView {
    /*Variable of UiColor type which contains red, green, blue slider value / 255.0 set as the value of RGBA*/
    UIColor*Colour = [UIColor colorWithRed: (self.RedSlider.value)/255.0 green:(self.GreenSlider.value)/255.0 blue:(self.BlueSlider.value)/255.0 alpha:(self.AlphaChannelSlider.value)];
    
    /*Set background Color of the view to the variable Colour*/
    self.ColourMixerView.backgroundColor = Colour;
   
    /*Returns Hex String after using a converter method*/
    NSString *Hex = [NSString stringWithFormat:@"Color: %@", [self hexStringForColor:Colour]];
    
    /*Change the Label to the Hex String*/
    self.HexColourValue.text = Hex;
}

/*Converts UI Color into a Hex String*/
- (NSString *)hexStringForColor:(UIColor *)color {
    const CGFloat *Components = CGColorGetComponents(color.CGColor);
    CGFloat r = Components[0];
    CGFloat g = Components[1];
    CGFloat b = Components[2];
    
    NSString *hexString=[NSString stringWithFormat:@"%02X%02X%02X", (int)(r * 255), (int)(g * 255), (int)(b * 255)];
    return hexString;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
