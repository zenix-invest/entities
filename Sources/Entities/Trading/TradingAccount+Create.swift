public extension TradingAccount {
    enum Create {
        public enum Provider: Codable {
            case etrade, webull
        }
        
        public struct Request: Codable {
            public let provider: Provider
            
            public init(provider: Provider) {
                self.provider = provider
            }
        }
        
        public struct Response: Codable {
            public init() {
                
            }
        }
    }
}
