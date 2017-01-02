//
//  LoadingView.swift
//  Diablo 3
//
//  Created by Gustav Wadström on 2017-01-01.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit

enum LoadingMessage: String {
    
    case loading = "Loading..."
    case downloading = "Downloading..."
    
}

class LoadingView: UIView {
    
    var view: UIView!
    
    private var loadingLbl: UILabel!
    private var activitySpinner: UIActivityIndicatorView!
    
    func setupView(view: UIView, msg: LoadingMessage) {
        
        self.view = view
        
        //Self View
        bounds.size = CGSize(width: 205, height: 155)
        layer.opacity = 1
        layer.backgroundColor = UIColor.white.cgColor
        layer.cornerRadius = 20.0
        center = view.center
        
        //Self View Shadow
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.9
        layer.shadowOffset = CGSize(width: 3, height: 2)
        
        //Over View
        let overView = UIView()
        overView.bounds.size = CGSize(width: 200, height: 150)
        overView.layer.opacity = 1
        overView.layer.backgroundColor = UIColor.black.cgColor
        overView.layer.cornerRadius = 20.0
        overView.center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        addSubview(overView)
        
        //Activity Spinner
        activitySpinner = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        activitySpinner.bounds.size = CGSize(width: 60, height: 60)
        
        activitySpinner.center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        
        overView.addSubview(activitySpinner)
        activitySpinner.startAnimating()
        
        //Loading Label
        loadingLbl = UILabel()
        loadingLbl.bounds.size = CGSize(width: 120, height: 21)
        loadingLbl.center = CGPoint(x: bounds.width / 2, y: (bounds.height / 2) - 50)
        
        loadingLbl.textColor = UIColor.white
        loadingLbl.textAlignment = .center
        loadingLbl.text = msg.rawValue
        
        let font = UIFont(name: "Avenir", size: 20)
        loadingLbl.font = font
        overView.addSubview(loadingLbl)
        
        
        view.addSubview(self)
    }
    
    func removeView() {
        
        removeFromSuperview()
        
    }
    
    func setMessage(msg: LoadingMessage) {
        
        loadingLbl.text = msg.rawValue
        
    }

}
