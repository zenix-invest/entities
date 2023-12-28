import Foundation

public enum ContestError: IdentifiableError {
    case contestNotFound
    case userAlreadyParticipantInContest
    case userNotInContest
    case creatorCannotLeaveContest
    case enrollmentExpired
    case maxNumberOfContestsExceeded
    case schedulingConflict
    case tradingAccountDoesntExist
    case tradingAccountIncorrect
    
    public var identifier: String {
        switch self {
        case .contestNotFound:
            "contest_not_found"
        case .userAlreadyParticipantInContest:
            "user_already_participant_in_contest"
        case .userNotInContest:
            "user_not_in_contest"
        case .creatorCannotLeaveContest:
            "creator_cannot_ceave_contest"
        case .enrollmentExpired:
            "enrollment_expired"
        case .maxNumberOfContestsExceeded:
            "max_number_of_contests_exceeded"
        case .schedulingConflict:
            "scheduling_conflict"
        case .tradingAccountDoesntExist:
            "trading_account_doesnt_exist"
        case .tradingAccountIncorrect:
            "trading_account_incorrect"
        }
    }
    
    public var reason: String {
        switch self {
        case .contestNotFound:
            "A contest with the given ID was not found."
        case .userAlreadyParticipantInContest:
            "User is already a prticipant in the given contest"
        case .userNotInContest:
            "User is not participating in the given contest"
        case .creatorCannotLeaveContest:
            "Contest creator cannot leave a contest. Try deleting it instead"
        case .enrollmentExpired:
            "The enrollment deadline for this contest has expired."
        case .maxNumberOfContestsExceeded:
            "Users can create up to 3 simultaneous contests"
        case .schedulingConflict:
            "Contest cannot start while another of user's contests is running"
        case .tradingAccountDoesntExist:
            "A trading account with this ID doesn't exist"
        case .tradingAccountIncorrect:
            "The requested operation cannot proceed with the given account"
        }
    }
}
