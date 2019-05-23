//
// Created by Carmelo Gallo on 5/28/17.
// Copyright (c) 2017 Carmelo Gallo. All rights reserved.
//

import Foundation
import IGListKit

class SpinnerSection: NSObject {

}

// MARK: - ListDiffable
extension SpinnerSection: ListDiffable {

    func diffIdentifier() -> NSObjectProtocol {
        return self
    }

    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return isEqual(object)
    }
}
