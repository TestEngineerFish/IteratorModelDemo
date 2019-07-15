//
//  ViewController.swift
//  IteratorModelDemo
//
//  Created by 沙庭宇 on 2019/7/15.
//  Copyright © 2019 沙庭宇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let namesRepository = NameRepository()
        let iter = namesRepository.getIterator()
        var hasNext = true
        while iter.hasNext(nameRe: namesRepository) {
            hasNext = iter.hasNext(nameRe: namesRepository)
            if hasNext {
                print(iter.next(nameRe: namesRepository)!)
            } else {
                continue
            }
        }

    }


}

