#import "MainScene.h"

@implementation MainScene
-(void)play{
    CCLOG(@"eeeee");
    
    CCScene *gameplayScene = [CCBReader loadAsScene:@"Gameplay"];
    [[CCDirector sharedDirector] replaceScene:gameplayScene];
}
@end
