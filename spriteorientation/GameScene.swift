//
//  GameScene.swift
//  spriteorientation
//
//  Created by giaunv on 3/16/15.
//  Copyright (c) 2015 366. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var sprite: SKSpriteNode?
    
    override func didMoveToView(view: SKView) {
        // Create space ship sprite
        sprite = SKSpriteNode(imageNamed: "Spaceship")
        sprite!.xScale = 0.5
        sprite!.yScale = 0.5
        
        // Give the sprite an initial location in the center of the screen
        sprite!.position = CGPointMake(frame.width/2, frame.height/2);
        
        // Add the sprite to the scene
        self.addChild(sprite!)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        // Capture the touch event
        let touch = touches.anyObject() as UITouch
        
        // Get the position that was touched
        let touchPosition = touch.locationInNode(self)
        
        // Get sprite's current position (a.k.a starting point)
        let currentPosition = sprite!.position
        
        // Calculate the angle using the relative positions of the sprite and touch
        let angle = atan2(currentPosition.y - touchPosition.y, currentPosition.x - touchPosition.x);
        
        // Define action for the ship to take
        let rotateAction = SKAction.rotateToAngle(angle + CGFloat(M_PI*0.5), duration: 0.0)
        let moveAction = SKAction.moveTo(touchPosition, duration: 0.5)
        
        // Tell the ship to execute actions
        sprite!.runAction(SKAction.sequence([rotateAction, moveAction]))
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
