//
//  ViewController.swift
//  SampleApplication
//
//  Created by box-jeon on 2021/08/22.
//

import UIKit
import BinaryPackages
import Alamofire
import RxSwift
import ReactorKit
import BoxKit

class ViewController: UIViewController {
    
    let code = HttpStatusCode.notFound

    override func viewDidLoad() {
        super.viewDidLoad()
        let just = Observable.just(0)
    }
}
