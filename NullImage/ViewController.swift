//
//  ViewController.swift
//  NullImage
//
//  Created by Gui on 15/12/20.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        // THIS WORKS
        let a = UIImage(named: "image_placeholder")?.sd_imageData(as: .PNG)
        assert(a != nil)
        assert(a!.count > 0)


        // THIS DOESNT WORK
        let b = UIImage(named: "image_placeholder")?.sd_imageData(as: .JPEG)
        assert(b != nil)
        assert(b!.count > 0)


        // THIS DOESNT WORK
        let c = UIImage(named: "image_placeholder")?.sd_imageData()
        assert(c != nil)
        assert(c!.count > 0)
    }


}

