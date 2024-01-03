public extension Metadata {
    enum Challenge {
        public struct Response: Codable {
            public let value: String
            
            public init(value: String) {
                self.value = value
            }
        }
    }
}
