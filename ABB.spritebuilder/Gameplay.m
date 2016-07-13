//
//  Gameplay.m
//  ABB
//
//  Created by New on 2016/7/12.
//  Copyright © 2016年 Apportable. All rights reserved.
//

#import "Gameplay.h"

@implementation Gameplay{
    CCPhysicsNode *_physicsNade;

    CCNode *_catapultArm;
    
    CCNode *_levelNode;
    
   
}

-(void)didLoadFromCCB {
    self.userInteractionEnabled = TRUE;
     CCNode *level = [CCBReader load:@"Levels/Level1"];
    [_levelNode addChild:level];
}

-(void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event{
    [self launchPenguin];
}
-(void)launchPenguin {
    CCNode *penguin = [CCBReader load:@"Penguins"];
    penguin.position =  _catapultArm.position, ccp(16, 50);
    [_physicsNade addChild:penguin];
    CGPoint launchDirection = ccp(1, 0);
    CGPoint force = ccpMult(launchDirection, 1000);
    [penguin.physicsBody applyForce:force];
    self.position = ccp(0 , 0);
    CCActionFollow *follow = [CCActionFollow actionWithTarget:penguin worldBoundary:self.boundingBox];
    [self runAction:follow];
    
    
}
@end
