//
//  ECVolumeScene.m
//  Eclosion
//
//  Created by Tsubasa on 13-9-8.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import "ECVolumeScene.h"
#import "ECMenuScene.h"

@implementation ECVolumeScene

+(CCScene *) scene
{
	CCScene *scene = [CCScene node];
	ECVolumeScene *layer = [ECVolumeScene node];
	[scene addChild: layer];
	return scene;
}

-(void) onEnter
{
	[super onEnter];
    
    // Set background
    CC_CREATE_SPRITE_CENTER(background, @"bg_3.png", 0);
    
    // Back button
    CC_CREATE_MENUITEM(backBtn, @"roundbuttonoff.png", @"roundbuttonon.png", back);
    backBtn.position = ccp(WINSIZE.width - 35, WINSIZE.height - 35);
    CC_MENUITEM_ADD_ICON(backBtn, @"back.png");
    
    // Menu
    CCMenu * m = [CCMenu menuWithItems:backBtn, nil];
    m.position = CGPointZero;
    [self addChild:m];
    
}

-(void) back {
    CC_TRANSLATE_SCENE([ECMenuScene scene]);
}

@end
