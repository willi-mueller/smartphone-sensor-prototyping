//
//  MGInputDetailViewController.h
//  Parsnip
//
//  Created by Willi Müller on 28.05.14.
//  Copyright (c) 2014 UFMG. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MGSensorInput.h"


@interface MGInputDetailViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate>

@property (strong, nonatomic) MGSensorInput* inputItem;

@end
