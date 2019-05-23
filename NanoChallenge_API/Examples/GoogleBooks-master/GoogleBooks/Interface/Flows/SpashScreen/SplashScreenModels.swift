//
//  SplashScreenModels.swift
//  GoogleBooks
//
//  Created by Carmelo Gallo on 9/18/17.
//  Copyright (c) 2017 Carmelo Gallo. All rights reserved.
//

import UIKit

enum SplashScreen {
    // MARK: Use cases
    enum Manager {
        struct Request { }
        struct Response {
            var result: Result<Bool>
        }
        struct ViewModel {
            var result: Result<Any>
        }
    }
}
