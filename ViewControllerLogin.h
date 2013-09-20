//
//  ViewControllerLogin.h
//  AppDemo
//
//  Created by Aldo Ulises on 17/09/13.
//  Copyright (c) 2013 Aldo Ulises. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerContenidoAppDemo.h"
#import <FacebookSDK/FacebookSDK.h>
#import <Twitter/Twitter.h>
#import <Social/Social.h>

@interface ViewControllerLogin : UIViewController<FBLoginViewDelegate>
{
    FBLoginView *loginView;
    FBSession *sesionFB;
    
    UIButton *bttnAccesoFB;
    UIButton *bttnAccesoDirecto;
    SLComposeViewController *twitterBttn;
    UIButton *bttnTwitter;
}
@end
