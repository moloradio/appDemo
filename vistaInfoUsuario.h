//
//  vistaInfoUsuario.h
//  AppDemo
//
//  Created by Aldo Ulises on 20/09/13.
//  Copyright (c) 2013 Aldo Ulises. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "ViewControllerContenidoAppDemo.h"

@interface vistaInfoUsuario : UIView<UITableViewDataSource>
{
    UIView *vistaEncabezado;
    UIImageView *imagenUsuario;
    UILabel *labelNombreUsuario;
    UIButton *bttnUsuario;
    
    UIButton *bttnMostrarCanales;
    UITableView *tablaCanales;
    
    NSMutableArray *arregloTablaCanales;
    
    UIButton *bttnEditarCanales;
    UIButton *bttnConfigurar;
}
@end
