import Foundation

public extension Contest {
    enum List {
        public struct Response: Codable {
            public let id: UUID
            public let name: String
            public let description: String
            public let winCondition: WinCondition
            public let targetProfitRatio: Double?
            public let visibility: Visibility
            public let currentPlayers: Int
            public let maxPlayers: Int
            public let minUserLevel: Int
            public let instruments: [FinancialInstrument]
            public let startDate: Date
            public let endDate: Date
            public let minFund: Double
            public let status: Status
            
            public init(
                id: UUID,
                name: String,
                description: String,
                winCondition: WinCondition,
                targetProfitRatio: Double? = nil,
                visibility: Visibility,
                currentPlayers: Int,
                maxPlayers: Int,
                minUserLevel: Int,
                instruments: [FinancialInstrument],
                startDate: Date,
                endDate: Date,
                minFund: Double,
                status: Status
            ) {
                self.id = id
                self.name = name
                self.description = description
                self.winCondition = winCondition
                self.targetProfitRatio = targetProfitRatio
                self.visibility = visibility
                self.currentPlayers = currentPlayers
                self.maxPlayers = maxPlayers
                self.minUserLevel = minUserLevel
                self.instruments = instruments
                self.startDate = startDate
                self.endDate = endDate
                self.minFund = minFund
                self.status = status
            }
        }
    }
}
