//
//  PlayingCardView.swift
//  CardGame
//
//  Created by Jonni Akesson on 2022-01-24.
//

import UIKit

class PlayingCardView: UIView {
    
    private func centeredAttributeString (_ string: String, fontSize: CGFloat) -> NSAttributedString {
        var font = UIFont.preferredFont(forTextStyle: .body).withSize(fontSize)
        font = UIFontMetrics(forTextStyle: .body).scaledFont(for: font)
        let paragrphStyle = NSMutableParagraphStyle()
        paragrphStyle.alignment = .center
        
        return NSAttributedString(string: string, attributes: [NSAttributedString.Key.paragraphStyle:paragrphStyle, .font:font])
    }
    
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
//        if let context = UIGraphicsGetCurrentContext() {
//            context.addArc(center: CGPoint(x: bounds.midX, y: bounds.midY), radius: 100.0, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
//            context.setLineWidth(5.0)
//            UIColor.green.setFill()
//            UIColor.red.setStroke()
//            context.strokePath()
//            context.fillPath()
//        }
        
//        let path = UIBezierPath()
//        path.addArc(withCenter: CGPoint(x: bounds.midX, y: bounds.midY), radius: 100.0, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
//        path.lineWidth = 10.0
//        UIColor.green.setFill()
//        UIColor.red.setStroke()
//        path.stroke()
//        path.fill()
        
        
        let roundedRect = UIBezierPath(roundedRect: bounds, cornerRadius: 16.0)
        roundedRect.addClip()
        UIColor.white.setFill()
        roundedRect.fill()
        
        
        
    } 
    
}
