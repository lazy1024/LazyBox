//
//  ViewController.m
//  DesignPattern
//
//  Created by 李永亮 on 16/3/15.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController


// Factory --------------------------------------------------------
//@synthesize canvasView = _cansView;
//
//-(void) loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator
//{
////    [_canvasView removeFromeSuperView];
//    CGRect aFrame = CGRectMake(0, 0, 320, 240);
//    CanvasView *aCanvasView = [generator canvasViewWithFrame:aFrame];
//    [self setCanvasView:aCanvasView];
//    [[self view] addSubview:_cansView];
//}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Adapter ---------------------------
    //SetStrokeColorCommand *stroke = [[SetStrokeColorCommand alloc] init];
    //[stroke execute];
    
    // Singleton ---------------------------
//    Singleton *a = [[Singleton alloc] init];
//    Singleton *b = [[Singleton alloc] init];
//    Singleton *c = [Singleton sharedInstance];
//    Singleton *d = [Singleton sharedInstance];
//    
//    Singleton *e = [d copy];
//    
//    NSLog(@"a:%p", a);
//    NSLog(@"b:%p", b);
//    NSLog(@"c:%p", c);
//    NSLog(@"d:%p", d);
//    
//    NSLog(@"e:%p", e);
    
    
    // Builder ---------------------------
//    CharacterBuilder *characterBuilder = [[StandardCharacterBuilder alloc] init];
//    ChasingGame *game = [[ChasingGame alloc] init];
//    
//    Character *player = [game createPlayer:characterBuilder];
//    Character *enemy = [game createEnemy:characterBuilder];
    
    // Abstract Factory ---------------------------
//    BrandingFactory *factory = [BrandingFactory factory];
//    UIView *view = [factory brandedView];
//    UIButton *button = [factory brandedMainButton];
//    [factory brandedToolBar];

    
    // Factory --------------------------------------------------------
////        CanvasViewGenerator * generator = [[CanvasViewGenerator alloc] init];
//    CanvasViewGenerator * generator = [[PaperCanvasViewGenerator alloc] init];
//    [self loadCanvasViewWithGenerator:generator];

    
    // Prototype --------------------------------------------------------
//#if 0
//    NSUInteger patternIndex = 0;
//    id<Mark> selectedMark;
//    NSMutableArray *templateArray = [[NSMutableArray alloc] initWithCapacity:5];
//    
//    // -------
//    id<Mark> patternTemplate = [selectedMark copy];
//    id<Mark> currentMark;
//    
//    [templateArray addObject:patternTemplate];
//    
//    id<Mark> patternClone = [templateArray objectAtIndex:patternIndex];
//    [currentMark addMark:patternClone];
//    [canvasView setMark: currentMark];
//    [canvasView setNeedsDisplay];
//#endif
//#if 0
//    LZPerson *person1 =[[LZPerson alloc] initWithFristName:@"Li" lastName:@"yi"];
//    LZPerson *person2 =[[LZPerson alloc] initWithFristName:@"Xiong" lastName:@"er"];
//    [person1 addFriend:person2];
//    
//    LZPerson *person3 = [person1 copy];
//    
//#endif
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
