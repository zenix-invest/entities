import Foundation

public enum Contest {
    public enum WinCondition: String, Codable {
        case highScore = "high_score"
        case target = "target"
    }
    
    public enum Visibility: String, Codable {
        case `public` = "public"
        case `private` = "private"
    }
    
    public enum Duration: String, Codable {
        case day, week, month, quarter
    }
    
    public enum FinancialInstrument: String, Codable {
        case stock, etf
    }
    
    public enum Market: String, Codable {
        case nasdaq, sp500, russell2000
    }
    
    public enum Status: String, Codable {
        case draft, ready, running, archived
    }
}
