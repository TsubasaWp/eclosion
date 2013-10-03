//
//  TileMap.h
//  Eclosion
//
//  Created by Tsubasa on 13-10-2.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

#define MAP_ROW 10
#define MAP_COL 7
#define TILE_SIZE 40

@interface ECTileMap : CCSprite {
    NSMutableArray *_tileMatrix;
    int _picxlMap[MAP_ROW * TILE_SIZE][MAP_COL* TILE_SIZE];
}

+ (ECTileMap *)mapBuildWithFile:(NSString *)filename;
- (void)update;
@end

