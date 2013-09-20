//
//  ViewControllerContenidoAppDemo.h
//  AppDemo
//
//  Created by Aldo Ulises on 17/09/13.
//  Copyright (c) 2013 Aldo Ulises. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "vistaContenido1.h"
#import "vistaContenido2.h"
#import "vistaContenido3.h"
#import "vistaInfoUsuario.h"

@interface ViewControllerContenidoAppDemo : UIViewController<UIScrollViewDelegate>
{
    UINavigationBar *barraDeNavegacion;
    
    UINavigationItem *itemsBarraNavegacion;
    
    UIBarButtonItem *bttnIzquierdo;
    UIBarButtonItem *bttnDerecho1;
    UIBarButtonItem *bttnDerecho2;
    
    UIPageControl *contenidoVistas;
    UIScrollView *scrollViewPage;
    
    vistaContenido1 *vista1;
    vistaContenido2 *vista2;
    vistaContenido3 *vista3;
    
    UIButton *bttnPopular;
    UIButton *bttnMiCanal;
    UIButton *bttnRecomienda;
    
    int contador;
    
    UIView *vistaInfoUsr;
    BOOL banderaDesplegarCanales;
}
@end
