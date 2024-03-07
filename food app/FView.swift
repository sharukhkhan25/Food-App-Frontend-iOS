//
//  FView.swift
//  food app
//
//  Created by Apple on 09/03/2022.
//

import UIKit

class FView: UIView {
    var lbl = UILabel()
    var textfield = UITextField()
    var img = UIImage()
    override init(frame: CGRect) {
          super.init(frame: frame)
          self.addCustomView()
          self.txtfield()
          //addSubview(textfield)
      }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.addCustomView()
        self.label()
        self.txtfield()
        //addSubview(textfield)
    }
    private func label()
    {
        lbl.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        lbl.text = "Find your Best Food"
        lbl.textColor = UIColor.orange
        lbl.textAlignment = .center
        addSubview(lbl)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        let Horizontal = NSLayoutConstraint(item: lbl, attribute: .leftMargin, relatedBy: .equal, toItem: self, attribute: .leftMargin, multiplier: 1.0, constant: 0)
        let Vertical = NSLayoutConstraint(item: lbl, attribute: .rightMargin, relatedBy: .equal, toItem: self, attribute: .rightMargin, multiplier: 1.0, constant: 0)
        let Width = NSLayoutConstraint(item: lbl, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 300)
        let Height = NSLayoutConstraint(item: lbl, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 120)
        addConstraints([Horizontal,Vertical,Width,Height])
    }
    
    private func txtfield()
    {
        textfield = UITextField(frame: CGRect(x:13 , y: 95, width: 350, height: 45))
        textfield.layer.cornerRadius = 25
        textfield.layer.borderWidth = 1
        textfield.layer.borderColor = UIColor.orange.cgColor
        textfield.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 24.0, height: 24.0))
        let image = UIImage(named: "orange-search-icon-164723")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 32, height: 40))
        view.addSubview(imageView)
        textfield.leftViewMode = UITextField.ViewMode.always
        textfield.leftView = view
        
        addSubview(textfield)
    }
    private func addCustomView()
    {
        layer.cornerRadius = 45
        layer.borderWidth = 1
        layer.borderColor = UIColor.orange.cgColor
    }

}
