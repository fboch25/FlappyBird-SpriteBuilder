#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize

{
    // your code here
    character = ((Character*)[CCBReader load:@"Character"]);
    [physicsNode addChild:character];
    
   
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObstacle += delta;
    if (timeSinceObstacle > 2.0f)
    
    {

[self addObstacle];

timeSinceObstacle = 0.0f;


}
// put new methods here
    
-(void)TouchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    [character flap];
    [self addObstacle];
    timeSinceObstacle = 0.0f;
    
    
    
}

@end
