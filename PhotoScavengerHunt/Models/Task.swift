//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your Favorite Resturant ",
                 description: "A place you'd definetily recomend to a friend?"),
            Task(title: "Favorite spot to hang out with friends ",
                 description: "Maybe its a secret spot hm?"),
            Task(title: "Best place to get coffee ",
                 description: "Don't gatekeep! Let us know!")
        ]
    }
}
