//
//  vistaContenido3.m
//  AppDemo
//
//  Created by Aldo Ulises on 20/09/13.
//  Copyright (c) 2013 Aldo Ulises. All rights reserved.
//

#import "vistaContenido3.h"

@implementation vistaContenido3

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self contenidoVista3];
    }
    return self;
}

- (void)contenidoVista3{
    arregloContenidoTablaTitulo = [[NSMutableArray alloc] initWithObjects:@"Vida y Estilo",@"Local",@"Horoscopos",@"Cine",@"Clima",@"Internacional", nil];
    arregloContenidoTablaNoticias = [[NSMutableArray alloc] initWithObjects:@"Alzheimer: desafío para sistemas hospitalarios del país",@"Abrirán compuertas de la Presa Cerro Prieto",@"Hoy deberás dar consejo a alguien que quieres, aunque no te guste tanto la idea. Si esta persona necesita de tu ayuda, escúchala...",@"JJ Abrams quiere que Star Wars VII se sienta “auténtica y real”",@"Pronóstico del clima de importantes ciudades del mundo",@"Finaliza NASA misión Deep Impact", nil];
    arregloContenidoTablaImagenes = [[NSMutableArray alloc] initWithObjects:@"Captura de pantalla 2013-09-20 a la(s) 16.46.29.png",@"Captura de pantalla 2013-09-20 a la(s) 16.48.20.png",@"Captura de pantalla 2013-09-20 a la(s) 16.35.10.png",@"Captura de pantalla 2013-09-20 a la(s) 16.33.24.png",@"Captura de pantalla 2013-09-20 a la(s) 16.31.12.png",@"Captura de pantalla 2013-09-20 a la(s) 16.50.41.png", nil];
    
    tablaContenido = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    [tablaContenido setRowHeight:55];
    [tablaContenido setDataSource:self];
    
    [self addSubview:tablaContenido];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [arregloContenidoTablaNoticias count];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *celdas = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 55)];
    UILabel *labelTitulo = [[UILabel alloc] initWithFrame:CGRectMake(60, 0, 200, 20)];
    labelTitulo.text = [arregloContenidoTablaTitulo objectAtIndex:[indexPath row]];
    
    UIImageView *imagenCanales = [[UIImageView alloc] initWithFrame:CGRectMake(4, 4, 50, 40)];
    [imagenCanales setImage:[UIImage imageNamed:[arregloContenidoTablaImagenes objectAtIndex:[indexPath row]]]];
    
    UITextView *labelSubtitulo = [[UITextView alloc] initWithFrame:CGRectMake(60, 20, 250, 30)];
    
    labelSubtitulo.text = [arregloContenidoTablaNoticias objectAtIndex:[indexPath row]];
    [labelSubtitulo setFont:[UIFont systemFontOfSize:15]];
    [labelSubtitulo setEditable:NO];
    
    [celdas.contentView addSubview:labelTitulo];
    [celdas.contentView addSubview:imagenCanales];
    [celdas.contentView addSubview:labelSubtitulo];
    
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
