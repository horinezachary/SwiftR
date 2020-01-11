//
//  CALayer+Center.swift
//  NativeSigP
//
//  Created by Kalanyu Zintus-art on 10/16/15.
//  Copyright © 2017 KalanyuZ. All rights reserved.
//

extension CALayer {
    
    /**
    Just testing documentation using Markdown
    - returns: Bool
    - parameter param1:String
    - parameter param2:String
    - Throws: error lists
    */
    func centerInSuperlayer() -> Bool {
        if self.superlayer == nil {
            return false
        }
        
        return centerInLayer(self.superlayer!)
    }

    func centerInLayer(_ layer: CALayer) -> Bool {
        self.position = CGPoint(x: layer.bounds.width/2, y: layer.bounds.height/2)
        //success
        return true
    }
	
	func fadeBackground(toColor color: SRColor, duration: Double, timing: String = convertFromCAMediaTimingFunctionName(CAMediaTimingFunctionName.easeOut)) {
		CATransaction.begin()
		let animation = CABasicAnimation(keyPath: "backgroundColor")
		CATransaction.setCompletionBlock({
			self.backgroundColor = SRColor.blue.cgColor
		})
		animation.duration = 2.0
		animation.timingFunction = CAMediaTimingFunction(name: convertToCAMediaTimingFunctionName(timing))
		animation.toValue = SRColor.blue.cgColor
		self.add(animation, forKey: "backgroundColor")
		
		CATransaction.commit()
	}
	
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromCAMediaTimingFunctionName(_ input: CAMediaTimingFunctionName) -> String {
	return input.rawValue
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToCAMediaTimingFunctionName(_ input: String) -> CAMediaTimingFunctionName {
	return CAMediaTimingFunctionName(rawValue: input)
}
