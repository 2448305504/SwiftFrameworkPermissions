
import Foundation

@objc(AnimalProtocol) // 给OC使用时就叫 AnimalProtocol
internal protocol Animal {
    init()
    func walk(withStep: Int) // 走了几步
}


// 中间类
@objc(Zoo)
internal class Zoo: NSObject { // internal是当前SwiftFramework可见
    // 用来保存OC的类（遵循swift协议）
    private static var animal: Animal.Type!
    
    // 把OC的类注册进来
    @objc static func registerAnimalType(type: Animal.Type) {
        animal = type
    }
    
    // Swift来调用
    func createAnimal() -> Animal {
        return Zoo.animal.init()
    }
}
