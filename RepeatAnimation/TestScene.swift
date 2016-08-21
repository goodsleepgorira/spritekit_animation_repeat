//
//  TestScene.swift
//

import Foundation
import SpriteKit

class TestScene:SKScene {

    var birdBrown:SKSpriteNode!
    
    //現在シーン設定時の呼び出しメソッド
    override func didMoveToView(view: SKView) {
    
        //SKSファイルに配置した鳥ノードを取得する。
        birdBrown = self.childNodeWithName("bird") as? SKSpriteNode
    }


    //画面タッチ時の呼び出しメソッド
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        //画面をタッチした座標に移動するアクションを作成する。
        let location = touches.first!.locationInNode(self)
        let action = SKAction.moveTo(CGPoint(x:location.x, y:location.y+20), duration:0.1)
        
        //アクションを実行する。
        birdBrown.runAction(action)
    }
}
