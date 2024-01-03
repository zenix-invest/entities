import Foundation

public enum Metadata {
    public struct Request: Codable {
        public let attestation: Data
        
        public init(attestation: Data) {
            self.attestation = attestation
        }
    }
    
    public struct Response: Codable {
        public let key: String
        
        public init(key: String) {
            self.key = key
        }
    }
}
