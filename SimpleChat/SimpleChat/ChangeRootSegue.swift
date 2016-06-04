//
//  ChangeRootSegue.swift
//  SimpleChat
//
//  Created by Dariusz Pacześniak on 04/06/16.
//  Copyright © 2016 DP. All rights reserved.
//

import UIKit

class ChangeRootSegue: UIStoryboardSegue {
    override func perform() {
        sourceViewController.view.window?.rootViewController = destinationViewController;
    }
}
