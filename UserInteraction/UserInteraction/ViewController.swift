//
//  ViewController.swift
//  UserInteraction
//
//  Created by Mohamad Mortada on 2/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let drag = UIPanGestureRecognizer(target: self, action: #selector(Interact))
        let drag2 = UIPanGestureRecognizer(target: self, action: #selector(Interact))
        let drag3 = UIPanGestureRecognizer(target: self, action: #selector(Interact))
        Image3.addGestureRecognizer(drag3)
        Image2.addGestureRecognizer(drag2)
        Image.addGestureRecognizer(drag)
        view.addSubview(Image)
        view.addSubview(Image3)
        view.addSubview(Image2)
    }

        
    private var Image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Image")
        image.frame = CGRect(x: 50, y: 200, width: 100, height: 100)
        image.isUserInteractionEnabled = true
        return image
    }()
    
    private var Image2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Image2")
        image.frame = CGRect(x: 50, y: 600, width: 300, height: 300)
        image.isUserInteractionEnabled = true
        return image
    }()
    
    private var Image3: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Image3")
        image.frame = CGRect(x: 220, y: 200, width: 100, height: 100)
        image.isUserInteractionEnabled = true
        return image
    }()

    @objc func Interact(recognizer: UIPanGestureRecognizer) {
        let trans = recognizer.translation(in: self.view)
        recognizer.view?.center = CGPoint(x: (recognizer.view?.center.x)! + trans.x, y: (recognizer.view?.center.y)! + trans.y)
        recognizer.setTranslation(CGPoint(x: 0, y: 0), in: self.view)
    }
}

