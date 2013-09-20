//
//  vistaContenido2.h
//  AppDemo
//
//  Created by Aldo Ulises on 20/09/13.
//  Copyright (c) 2013 Aldo Ulises. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface vistaContenido2 : UIView<UITableViewDataSource>
{
    UITableView *tablaContenido;
    
    NSMutableArray *arregloContenidoTablaTitulo;
    NSMutableArray *arregloContenidoTablaNoticias;
    NSMutableArray *arregloContenidoTablaImagenes;
}
@end
