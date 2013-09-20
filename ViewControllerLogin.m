//
//  ViewControllerLogin.m
//  AppDemo
//
//  Created by Aldo Ulises on 17/09/13.
//  Copyright (c) 2013 Aldo Ulises. All rights reserved.
//

#import "ViewControllerLogin.h"

@interface ViewControllerLogin ()

@end

@implementation ViewControllerLogin

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.frame = CGRectMake(0, 0, self.view.window.frame.size.height, self.view.window.frame.size.height);
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    loginView = [[FBLoginView alloc] initWithFrame:CGRectMake(50, 100, loginView.frame.size.width, loginView.frame.size.height)];
    bttnAccesoDirecto = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2)-100, 350, 200, 30)];
    bttnTwitter = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2)-100, 180, 200, 30)];
    [bttnTwitter setTitle:@"Twitter" forState:UIControlStateNormal];
    [bttnTwitter setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bttnTwitter setBackgroundColor:[UIColor colorWithRed:0.6 green:0.9 blue:0.8 alpha:1]];
    bttnTwitter.layer.cornerRadius = 4;
    
    [bttnAccesoDirecto setTitle:@"Entrar sin registrarse >>" forState:UIControlStateNormal];
    [bttnAccesoDirecto addTarget:self action:@selector(abrirVentanaContenido:) forControlEvents:UIControlEventTouchDown];
    [bttnAccesoDirecto setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    twitterBttn = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [twitterBttn setModalPresentationStyle:UIModalPresentationCurrentContext];
    
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        NSLog(@"SI");
    }else{
        NSLog(@"NO");
    }
    
    [loginView setDelegate:self];
    //loginView.readPermissions = @[@"email",@"user_likes"];
    
    [self.view setBackgroundColor:[UIColor colorWithRed:0.6 green:0.7 blue:0.8 alpha:1]];
    [self.view addSubview:loginView];
    [self.view addSubview:bttnAccesoDirecto];
    [self.view addSubview:bttnTwitter];
}

- (void)abrirVentanaContenido:(id)sender{
    ViewControllerContenidoAppDemo *vcd = [[ViewControllerContenidoAppDemo alloc] init];
    [self presentViewController:vcd animated:YES completion:nil];
}

/*- (void)loginViewShowingLoggedInUser:(FBLoginView *)loginView{
    if ([FBSession activeSession]) {
        NSLog(@"Bienvenido");
    }else{
        NSLog(@"Adios");
    }
}*/

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



@end
