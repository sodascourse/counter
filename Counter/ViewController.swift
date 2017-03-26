//
//  ViewController.swift
//  Counter
//
//  Copyright 2016-2017 Tien-Che Tsai
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!

    var currentCount: Int = 0 {
        didSet {
            // Boundary checking
            if self.currentCount < 0 {
                self.currentCount = 0
            }
            // Update label
            self.countLabel.text = "\(currentCount)"
        }
    }

    @IBOutlet weak var countLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        for button in self.buttons {
            button.layer.borderColor = button.tintColor.cgColor
            button.layer.borderWidth = 1.0
            button.layer.cornerRadius = 10
        }
    }

    @IBAction func increaseCounter(_ sender: UIButton) {
        self.currentCount += 1
    }

    @IBAction func decreaseCounter(_ sender: UIButton) {
        self.currentCount -= 1
    }

    @IBAction func resetCounter(_ sender: UIButton) {
        self.currentCount = 0
    }

}
