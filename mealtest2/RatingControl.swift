//
//  RatingControl.swift
//  mealtest2
//
//  Created by jc on 2/19/18.
//  Copyright © 2018 jc. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    
    
    
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    var rating = 0
    
    @IBInspectable var starSize: CGSize = CGSize(width:44, height:44){
        didSet{
            setupButtons()
        }
    }
    @IBInspectable var starCount: Int = 5{
        didSet{
            setupButtons()
        }    }

    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Private Methods
    
    private func setupButtons(){
        
        //Create the button
        
        for _ in 0..<starCount{
            let button = UIButton()
            button.backgroundColor = UIColor.red
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            addArrangedSubview(button)
            ratingButtons.append(button)
        }
    
        
    }
    
    //MARK: Button Action
    
    @objc func ratingButtonTapped(button:UIButton){
        print("Button Pressed")
    }

}
