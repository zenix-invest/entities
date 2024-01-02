import Foundation

public extension Contest {
    enum Create {
        public struct Request: Codable, Equatable {
            public let name: String
            public let description: String
            public let winCondition: WinCondition
            public let targetProfitRatio: Double?
            public let visibility: Visibility
            public let minPlayers: Int
            public let maxPlayers: Int
            public let instruments: [FinancialInstrument]
            public let markets: [Market]
            public let duration: Duration
            public let startDate: Date
            public let minFund: Double
            public let tradingAccountId: UUID
            
            public init(
                name: String,
                description: String,
                winCondition: WinCondition,
                targetProfitRatio: Double? = nil,
                visibility: Visibility,
                minPlayers: Int,
                maxPlayers: Int,
                instruments: [FinancialInstrument],
                markets: [Market],
                duration: Duration,
                startDate: Date,
                minFund: Double,
                tradingAccountId: UUID
            ) {
                self.name = name
                self.description = description
                self.winCondition = winCondition
                self.targetProfitRatio = targetProfitRatio
                self.visibility = visibility
                self.minPlayers = minPlayers
                self.maxPlayers = maxPlayers
                self.instruments = instruments
                self.markets = markets
                self.duration = duration
                self.startDate = startDate
                self.minFund = minFund
                self.tradingAccountId = tradingAccountId
            }
        }
        
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
                tradesLimit: Int
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
            }
        }
    }
}
