import Foundation

// Create DISPACTHQUEUE
let concurrentQueue = DispatchQueue.global(qos: .background)

// ASYNC
concurrentQueue.async {
    print("Expelliarmus!")
}
concurrentQueue.async {
    print("Patronus!")
}

concurrentQueue.sync {}

print("Great Spell")