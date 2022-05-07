
import Foundation
import CryptoKit
import Combine



@available(macOS 10.15, *)
actor HashCache {
  private(set) var hashes = [Int: String]()

  func addHash(for number: Int) {
    @available(macOS 10.15, *)
    let string = SHA512.hash(data:
    Data(String(number).utf8)
    ).description

    hashes[number] = string
  }

  func compute() -> AnyPublisher<Int, Never> {
    let progress = CurrentValueSubject<Int, Never>(0)

    async {
      await withTaskGroup(of: Bool.self) { group in
        // Schedule all the tasks.
        for number in 0 ... 15_000 {
          group.spawn {
            await self.addHash(for: number)
            return true
          }
        }

        // Consume the tasks as they complete.
        var counter = 0.0
        while let _ = await group.next() {
          counter += 1
          progress.send(Int(counter / 15_000.0 * 100))
        }
      }

      progress.send(100)
      progress.send(completion: .finished)
    }

    return progress.eraseToAnyPublisher()
  }
}


print("Hello, World!")
let mainActor = HashCache()
