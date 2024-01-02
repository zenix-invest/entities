import Foundation

public extension Contest {
    enum Details {
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let name: String
            public let description: String
            public let creator: User.List.Response
            public let participants: [User.List.Response]
            public let winCondition: WinCondition
            public let targetProfitRatio: Double?
            public let visibility: Visibility
            public let minPlayers: Int
            public let maxPlayers: Int
            public let minUserLevel: Int
            public let instruments: [FinancialInstrument]
            public let markets: [Market]
            public let startDate: Date
            public let endDate: Date
            public let marginAllowed: Bool
            public let minFund: Double
            public let tradesLimit: Int
            public let status: Status
            
            public init(
                id: UUID,
                name: String,
                description: String,
                creator: User.List.Response,
                participants: [User.List.Response],
                winCondition: WinCondition,
                targetProfitRatio: Double? = nil,
                visibility: Visibility,
                minPlayers: Int,
                maxPlayers: Int,
                minUserLevel: Int,
                instruments: [FinancialInstrument],
                markets: [Market],
                startDate: Date,
                endDate: Date,
                marginAllowed: Bool,
                minFund: Double,
                tradesLimit: Int,
                status: Status
            ) {
                self.id = id
                self.name = name
                self.description = description
                self.creator = creator
                self.participants = participants
                self.winCondition = winCondition
                self.targetProfitRatio = targetProfitRatio
                self.visibility = visibility
                self.minPlayers = minPlayers
                self.maxPlayers = maxPlayers
                self.minUserLevel = minUserLevel
                self.instruments = instruments
                self.markets = markets
                self.startDate = startDate
                self.endDate = endDate
                self.marginAllowed = marginAllowed
                self.minFund = minFund
                self.tradesLimit = tradesLimit
                self.status = status
            }
        }
    }
}
