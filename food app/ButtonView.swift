//
//  ButtonView.swift
//  food app
//
//  Created by Apple on 21/03/2022.
//

import UIKit

class ButtonView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        buttenView1()
        buttonView2()
        buttonVeiw3()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        buttenView1()
        buttonView2()
        buttonVeiw3()
    }
    public func buttenView1()
    {
        let button = UIButton(frame: CGRect(x: 155, y: 11, width: 104, height: 39))
        button.setTitleColor(UIColor.orange, for: .normal)
        button.setTitle("All Foods", for: .normal)
        button.layer.cornerRadius = 15
        button.layer.borderColor = UIColor.orange.cgColor
        button.layer.borderWidth = 1
        //button.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)//Button Action
       addSubview(button)
    }
    public func buttonView2()
    {
        let button = UIButton(frame: CGRect(x: 10, y: 11, width: 104, height: 39))
        button.setTitleColor(UIColor.orange, for: .normal)
        button.setTitle("Salads", for: .normal)
        button.layer.cornerRadius = 15
        button.layer.borderColor = UIColor.orange.cgColor
        button.layer.borderWidth = 1
        //button.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)//Button Action
        addSubview(button)
    }
    public func buttonVeiw3()
    {
        let button = UIButton(frame: CGRect(x: 270, y: 11, width: 104, height: 39))
        button.setTitleColor(UIColor.orange, for: .normal)
        button.setTitle("All Foods", for: .normal)
        button.layer.cornerRadius = 15
        button.layer.borderColor = UIColor.orange.cgColor
        button.layer.borderWidth = 1
        //button.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)//Button Action
       addSubview(button)
    }
}
