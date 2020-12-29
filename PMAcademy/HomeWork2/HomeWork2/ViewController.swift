//
//  ViewController.swift
//  HomeWork2
//
//  Created by Ангелина Косенко on 29.12.2020.
//

enum Role {
    case regularUser
    case admin
}

enum ValidUsername {
    case success
    case userIsExist(String)
}

enum UserStatus {
    case login
    case logout
    case banned
}

class User {
    
    let username: String
    let password: String
    var state: UserStatus = .logout
    var role: Role
    var bets: [Bet] = []
    
    
    init(username: String, password: String, role: Role) {
        self.username = username
        self.password = password
        self.role = role
    }
    
    func doBet(bet: Bet) {
        bets.append(bet)
    }
    
    func showAllBets() {
        print(bets)
    }
    
}

class BettingSystem {
    
    private var bet = BettingStorage().getBet()
    
    
    func takeBet(user: User) -> Bool {
        if user.state == .login {
            user.doBet(bet: bet)
            return true
        }
        return false
    }
    
    
}

class BettingStorage {
    
    private let bet1 = Bet(description: "first bet ")
    private let bet2 = Bet(description: "second bet ")
    private let bet3 = Bet(description: "third bet ")
    
    
    
    func getBet() -> Bet {
        return [bet1, bet2, bet3].randomElement()!
    }
    
}

struct Bet {
    
    var description: String
    
}

class UsersManager {
    
    private let validator = Validator()
    
    
    func createUser(username: String, password: String, role: Role, success: (User)->(), failure: (String?)->()) {
        switch validator.hasValid(username: username){
        case .success:
            success(User(username: username, password: password, role: role))
        case .userIsExist(let error):
            print(error)
            failure(error)
            
        }
        
    }
    
}

class Validator {
    
    let users = StorageService().getUsers()
    
    func hasValid(username: String) -> ValidUsername {
        
        for user in users {
            if user.username == username {
                return .userIsExist("User is exist")
            }
        }
        return .success
    }
}

class StorageService {
    
    private let katya = User(username: "harchenko", password: "1234", role: .regularUser)
    private let olya = User(username: "tytenko", password: "87654", role: .admin)
    
    private lazy var users: [User] = [katya, olya]
    
    func getUsers() -> [User] {
        return users
    }
    
}

// Mark: Login/logut


class Authentification {
    
    
    static func signIn(user: User) {
        user.state = .login
    }
    
    static func logout(user: User) {
        user.state = .logout
    }
    
}


var user: User?

UsersManager().createUser(username: "andrey", password: "56788", role: .regularUser) { (newUser) in
    user = newUser
} failure: { (error) in
    if let error = error {
        print(error)
    }
    
}



let betSys = BettingSystem()

if let user = user {
    Authentification.signIn(user: user)
    betSys.takeBet(user: user)
}







