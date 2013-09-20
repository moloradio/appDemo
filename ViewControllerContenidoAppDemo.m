//
//  ViewControllerContenidoAppDemo.m
//  AppDemo
//
//  Created by Aldo Ulises on 17/09/13.
//  Copyright (c) 2013 Aldo Ulises. All rights reserved.
//

#import "ViewControllerContenidoAppDemo.h"

@interface ViewControllerContenidoAppDemo ()

@end

@implementation ViewControllerContenidoAppDemo

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithRed:0.6 green:0.72 blue:0.8 alpha:1]];
    
    barraDeNavegacion = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    itemsBarraNavegacion = [[UINavigationItem alloc] init];
    
    bttnIzquierdo = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"111.png"] style:UIBarButtonItemStylePlain target:self action:nil];
    [bttnIzquierdo setTarget:self];
    [bttnIzquierdo setAction:@selector(efectoSliderView:)];
    
    bttnDerecho1 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"6.png"] style:UIBarButtonItemStylePlain target:self action:nil];
    
    bttnDerecho2 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"99.png"] style:UIBarButtonItemStylePlain  target:self action:nil];
    NSArray *grupoBttnDerecho = [[NSArray alloc] initWithObjects:bttnDerecho1,bttnDerecho2, nil];
    
    itemsBarraNavegacion.leftBarButtonItem = bttnIzquierdo;
    itemsBarraNavegacion.rightBarButtonItems = grupoBttnDerecho;
    
    NSArray *arregloItemsBarraNavegacion = [[NSArray alloc] initWithObjects:itemsBarraNavegacion, nil];
    [barraDeNavegacion setItems:arregloItemsBarraNavegacion];
    
    contenidoVistas = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 80, self.view.frame.size.width, self.view.frame.size.height-80)];
    
    scrollViewPage = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 80, self.view.frame.size.width, self.view.frame.size.height-80)];
    [scrollViewPage setDelegate:self];
    [scrollViewPage setContentSize:CGSizeMake(3*self.view.frame.size.width, 380)];
    scrollViewPage.pagingEnabled = YES;
    
    vista1 = [[vistaContenido1 alloc] initWithFrame:CGRectMake(0, 0, 320, 380)];
    vista2 = [[vistaContenido2 alloc] initWithFrame:CGRectMake(320, 0, 320, 380)];
    vista3 = [[vistaContenido3 alloc] initWithFrame:CGRectMake(320*2, 0, 320, 380)];
    
    bttnPopular = [[UIButton alloc] initWithFrame:CGRectMake(0, 44, self.view.frame.size.width/3, 36)];
    [bttnPopular setTitle:@"Populares" forState:UIControlStateNormal];
    [bttnPopular setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bttnPopular setBackgroundColor:[UIColor colorWithRed:0.6 green:0.4 blue:0.9 alpha:1]];
    bttnPopular.layer.cornerRadius = 2;
    [bttnPopular addTarget:self action:@selector(eventoMostrarPopulares) forControlEvents:UIControlEventTouchDown];
    
    bttnMiCanal = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/3, 44, self.view.frame.size.width/3, 36)];
    [bttnMiCanal setTitle:@"Mi Canal" forState:UIControlStateNormal];
    [bttnMiCanal setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    bttnMiCanal.layer.cornerRadius = 2;
    [bttnMiCanal addTarget:self action:@selector(eventoMostrarCanales) forControlEvents:UIControlEventTouchDown];
    
    bttnRecomienda = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width/3)*2, 44, self.view.frame.size.width/3, 36)];
    [bttnRecomienda setTitle:@"Recomienda" forState:UIControlStateNormal];
    [bttnRecomienda setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    bttnRecomienda.layer.cornerRadius = 2;
    [bttnRecomienda addTarget:self action:@selector(eventoMostrarRecomendado) forControlEvents:UIControlEventTouchDown];
    
    [scrollViewPage addSubview:vista1];
    [scrollViewPage addSubview:vista2];
    [scrollViewPage addSubview:vista3];
    
    vistaInfoUsr = [[vistaInfoUsuario alloc] initWithFrame:CGRectMake(-260, 0, 260, 460)];
    
    [self.view addSubview:barraDeNavegacion];
    [self.view addSubview:bttnRecomienda];
    [self.view addSubview:bttnPopular];
    [self.view addSubview:bttnMiCanal];
    [self.view addSubview:contenidoVistas];
    [self.view addSubview:scrollViewPage];
    [self.view addSubview:vistaInfoUsr];
}

- (void)eventoMostrarPopulares{
    [scrollViewPage setContentOffset:CGPointMake(0, 0) animated:YES];
    [bttnPopular setBackgroundColor:[UIColor colorWithRed:0.6 green:0.4 blue:0.9 alpha:1]];
    [bttnMiCanal setBackgroundColor:[UIColor clearColor]];
    [bttnRecomienda setBackgroundColor:[UIColor clearColor]];
}

- (void)eventoMostrarCanales{
    [contenidoVistas setCurrentPage:1];
    [scrollViewPage setContentOffset:CGPointMake(scrollViewPage.frame.size.width, 0) animated:YES];
    [bttnRecomienda setBackgroundColor:[UIColor clearColor]];
    [bttnPopular setBackgroundColor:[UIColor clearColor]];
    [bttnMiCanal setBackgroundColor:[UIColor colorWithRed:0.6 green:0.4 blue:0.9 alpha:1]];
}

- (void)eventoMostrarRecomendado{
    [contenidoVistas setCurrentPage:2];
    [scrollViewPage setContentOffset:CGPointMake(scrollViewPage.frame.size.width*2, 0) animated:YES];
    [bttnMiCanal setBackgroundColor:[UIColor clearColor]];
    [bttnPopular setBackgroundColor:[UIColor clearColor]];
    [bttnRecomienda setBackgroundColor:[UIColor colorWithRed:0.6 green:0.4 blue:0.9 alpha:1]];
}

- (void)efectoSliderView:(id)sender{
    if (!banderaDesplegarCanales) {
        contador = 0;
        [NSTimer scheduledTimerWithTimeInterval:0.002 target:self selector:@selector(moverViewAIzquierda:) userInfo:nil repeats:YES];
        banderaDesplegarCanales = TRUE;
    }else{
        contador = 260;
        [NSTimer scheduledTimerWithTimeInterval:0.002 target:self selector:@selector(moverViewADerecha:) userInfo:nil repeats:YES];
        banderaDesplegarCanales = false;
    }
}

- (void)moverViewAIzquierda:(NSTimer*)sender{
    contador+=2;
    if (contador <= 260) {
        self.view.frame = CGRectMake(contador, 20, 320, 460);
    }else{
        [sender invalidate];
    }
}

- (void)moverViewADerecha:(NSTimer*)sender{
    contador-=2;
    if (contador >= 0) {
        self.view.frame = CGRectMake(contador, 20, 320, 460);
    }else{
        [sender invalidate];
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    CGFloat pageWidth = scrollView.frame.size.width;
    float pagina = scrollView.contentOffset.x/pageWidth;
    NSInteger pag = lround(pagina);
    contenidoVistas.currentPage = pag;
    if (pag == 0) {
        [bttnPopular setBackgroundColor:[UIColor colorWithRed:0.6 green:0.4 blue:0.9 alpha:1]];
        [bttnMiCanal setBackgroundColor:[UIColor clearColor]];
        [bttnRecomienda setBackgroundColor:[UIColor clearColor]];
    }
    if (pag == 1) {
        [bttnRecomienda setBackgroundColor:[UIColor clearColor]];
        [bttnPopular setBackgroundColor:[UIColor clearColor]];
        [bttnMiCanal setBackgroundColor:[UIColor colorWithRed:0.6 green:0.4 blue:0.9 alpha:1]];
    }
    if (pag == 2) {
        [bttnMiCanal setBackgroundColor:[UIColor clearColor]];
        [bttnPopular setBackgroundColor:[UIColor clearColor]];
        [bttnRecomienda setBackgroundColor:[UIColor colorWithRed:0.6 green:0.4 blue:0.9 alpha:1]];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
