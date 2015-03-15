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
        
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
