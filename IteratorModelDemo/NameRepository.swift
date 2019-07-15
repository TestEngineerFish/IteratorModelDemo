//
//  NameRepository.swift
//  IteratorModelDemo
//
//  Created by 沙庭宇 on 2019/7/15.
//  Copyright © 2019 沙庭宇. All rights reserved.
//

import Foundation

protocol Container {
    func getIterator()-> Iterator
}

class NameRepository: Container {
    let names = ["Sam", "Ada", "Iris", "Jennifier", "Jeff"]
    func getIterator() -> Iterator {
        return NameIterator()
    }
}

protocol Iterator {
    func hasNext(nameRe:NameRepository)->Bool
    func next(nameRe:NameRepository)->String?
}

class NameIterator: Iterator {

    var index: Int = 0

    func hasNext(nameRe:NameRepository) -> Bool {
        return index < nameRe.names.count
    }

    func next(nameRe:NameRepository) -> String? {
        if self.hasNext(nameRe: nameRe) {
            let name = nameRe.names[index]
            index += 1
            return name
        }
        return nil
    }

}
