//
//  GameScene.swift
//  ShapeVsSpriteTest
//
//  Created by Zion Perez on 10/8/16.
//  Copyright © 2016 Zion Perez. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {

    override func didMove(to view: SKView) {
        
        let myTextureAtlas = SKTextureAtlas(named: "8bitfont")
        let arrayOfFileNames = myTextureAtlas.textureNames
        print(arrayOfFileNames)
        let myTexture = myTextureAtlas.textureNamed("a.png")
        
        // Top left circle
        let circleShape1 = SKShapeNode(circleOfRadius: 160)
        circleShape1.fillColor = SKColor.white
        circleShape1.fillTexture = SKTexture(imageNamed: "a.png")
        circleShape1.position = CGPoint(x: -180, y: 180)
        addChild(circleShape1)
        
        // Top right circle
        let circleShape2 = SKShapeNode(circleOfRadius: 160)
        circleShape2.fillColor = SKColor.white
        circleShape2.fillTexture = myTexture as SKTexture
        circleShape2.position = CGPoint(x: 180, y: 180)
        addChild(circleShape2)
        
        // Bottom left circle
        let circleSprite1 = SKSpriteNode(color: SKColor.white, size: CGSize(width: 320, height: 320))
        circleSprite1.texture = myTexture
        circleSprite1.position = (CGPoint(x: -180, y: -180))
        addChild(circleSprite1)
        
        // Bottom right circle
        let circleSprite2 = SKSpriteNode(color: SKColor.white, size: CGSize(width: 320, height: 320))
        circleSprite2.texture = SKTexture(imageNamed: "a.png")
        circleSprite2.position = (CGPoint(x: 180, y: -180))
        addChild(circleSprite2)
        
        print(myTexture)
    }
}
