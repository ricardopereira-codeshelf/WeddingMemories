//
//  MustacheHandler.swift
//  WeddingMemories
//
//  Created by Tyler Lafferty on 2/10/17.
//  Copyright © 2017 Tyler Lafferty. All rights reserved.
//

import Foundation
import UIKit

class MustacheHandler {
    
     /// Add a bushy mustache
    class func drawBushyMustache(imgView : UIImageView, face : CIFaceFeature, context : CGContext) {
        let faceRect = face.bounds
        var mustache = UIImage(named: "bushyMustache")
        let imgWidth = faceRect.size.width/1.8
        let imgHeight = imgWidth * 0.7
        
        // Create the X & Y point for the mustache
        let mustacheY = imgView.image!.size.height - face.mouthPosition.y  - (imgHeight/1.4)
        var mustacheX = face.mouthPosition.x - imgWidth/2
        if face.faceAngle < 0 {
            mustacheX -= CGFloat(abs(face.faceAngle))
        } else {
            mustacheX += CGFloat(face.faceAngle)
        }
        
        // Create the rect to draw it in
        let imgRect = CGRect(x: mustacheX, y: mustacheY, width: imgWidth, height: imgHeight)
        
        // Rotate the image according to the face angle
        mustache = mustache?.rotated(by: Measurement(value: Double(face.faceAngle), unit: .degrees))
        
        // Draw the mustache on
        mustache?.draw(in: imgRect)
    }
    
    /// Add a french mustache
    class func drawFrenchMustache(imgView: UIImageView, face : CIFaceFeature, context : CGContext) {
        let faceRect = face.bounds
        var mustache = UIImage(named: "hige_100")
        let imgWidth = faceRect.size.width * 4/5
        let imgHeight = imgWidth * 0.3
        
        // Create the X & Y point for the mustache
        let mustacheY = imgView.image!.size.height - face.mouthPosition.y  - (imgHeight/1.2)
        var mustacheX = face.mouthPosition.x - imgWidth/2
        if face.faceAngle < 0 {
            mustacheX -= CGFloat(abs(face.faceAngle))
        } else {
            mustacheX += CGFloat(face.faceAngle)
        }
        
        // Create the rect to draw it in
        let imgRect = CGRect(x: mustacheX, y: mustacheY, width: imgWidth, height: imgHeight)
        
        // Rotate the image according to the face angle
        mustache = mustache?.rotated(by: Measurement(value: Double(face.faceAngle), unit: .degrees))
        
        // Draw the mustache on
        mustache?.draw(in: imgRect)
    }
}
