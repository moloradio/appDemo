//
//  vistaInfoUsuario.m
//  AppDemo
//
//  Created by Aldo Ulises on 20/09/13.
//  Copyright (c) 2013 Aldo Ulises. All rights reserved.
//

#import "vistaInfoUsuario.h"

@implementation vistaInfoUsuario

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self cargarContenidoVista];
    }
    return self;
}

- (void)cargarContenidoVista{
    
    self.layer.borderWidth = 1;
    
    arregloTablaCanales = [[NSMutableArray alloc] initWithObjects:@"Espectaculos",@"Lo de Hoy",@"Horoscopos",@"Cine",@"Clima", nil];
    
    vistaEncabezado = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 60)];
    vistaEncabezado.layer.borderWidth = 1;
    [vistaEncabezado setBackgroundColor:[UIColor colorWithRed:0.8 green:0.9 blue:0.9 alpha:1]];
    
    imagenUsuario = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 40, 40)];
    [imagenUsuario setImage:[UIImage imageNamed:@"2.png"]];
    
    labelNombreUsuario = [[UILabel alloc] initWithFrame:CGRectMake(60, 20, 80, 30)];
    [labelNombreUsuario setTextColor:[UIColor blackColor]];
    [labelNombreUsuario setBackgroundColor:[UIColor clearColor]];
    [labelNombreUsuario setFont:[UIFont boldSystemFontOfSize:15]];
    [labelNombreUsuario setText:@"Usuario"];
    
    bttnUsuario = [[UIButton alloc] initWithFrame:CGRectMake(150, 20, 100, 30)];
    [bttnUsuario setTitle:@"Cerrar Sesion" forState:UIControlStateNormal];
    [bttnUsuario setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bttnUsuario setBackgroundColor:[UIColor colorWithRed:0.5 green:0.9 blue:0.9 alpha:1]];
    bttnUsuario.layer.cornerRadius = 4;
    bttnUsuario.layer.borderWidth = 1;
    [bttnUsuario.titleLabel setFont:[UIFont systemFontOfSize:15]];
    
    bttnMostrarCanales = [[UIButton alloc] initWithFrame:CGRectMake(0, 60, self.frame.size.width, 36)];
    [bttnMostrarCanales setTitle:@"Todos Los Canales" forState:UIControlStateNormal];
    [bttnMostrarCanales setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    bttnMostrarCanales.layer.borderWidth = 1;
    
    [vistaEncabezado addSubview:imagenUsuario];
    [vistaEncabezado addSubview:labelNombreUsuario];
    [vistaEncabezado addSubview:bttnUsuario];
    
    tablaCanales = [[UITableView alloc] initWithFrame:CGRectMake(0, 96, self.frame.size.width, 220) style:UITableViewStylePlain];
    [tablaCanales setDataSource:self];
    
    
    bttnEditarCanales = [[UIButton alloc] initWithFrame:CGRectMake(0, 314, self.frame.size.width/2-2, 70)];
    [bttnEditarCanales setBackgroundColor:[UIColor colorWithRed:0.48 green:0.85 blue:0.8 alpha:1]];
    [bttnEditarCanales setImage:[UIImage imageNamed:@"144.png"] forState:UIControlStateNormal];
    bttnEditarCanales.layer.borderWidth = 2;
    
    bttnConfigurar = [[UIButton alloc] initWithFrame:CGRectMake(self.frame.size.width/2+2, 314, self.frame.size.width/2-4, 70)];
    [bttnConfigurar setBackgroundColor:[UIColor colorWithRed:0.48 green:0.85 blue:0.8 alpha:1]];
    [bttnConfigurar setImage:[UIImage imageNamed:@"11.png"] forState:UIControlStateNormal];
    bttnConfigurar.layer.borderWidth = 2;
    
    [self addSubview:bttnMostrarCanales];
    [self addSubview:vistaEncabezado];
    [self addSubview:bttnMostrarCanales];
    [self addSubview:tablaCanales];
    [self addSubview:bttnConfigurar];
    [self addSubview:bttnEditarCanales];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [arregloTablaCanales count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *celdas = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 44)];
    
    celdas.textLabel.text = [arregloTablaCanales objectAtIndex:[indexPath row]];
    [celdas.textLabel setFont:[UIFont boldSystemFontOfSize:16]];
    
    return celdas;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
