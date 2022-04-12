
import Foundation

@objc public class Person: NSObject {
    
    private let teacher: Animal
    
    public override init() {
        teacher = Zoo().createAnimal()
    }
    
    @objc public func talk() {
        teacher.walk(withStep: 10)
    }
}
