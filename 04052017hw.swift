// Problem 1 - Write a type, Player with two properties, name and symbol. There are two valid symbols: x and o.
struct Player {
    var name: String
    var symbol: Symbol
}
enum Symbol {
    case x
    case o
}

struct Location {
    var x = (0, 0, 0)
    var y = (0, 0, 0)
}

//  Write a function, createPlayer, which accepts a name and a symbol, returns a Player with the provided values if the provided name is non-empty and returns nothing if the name was empty.
func createPlayer(name: String, symbolValue: Symbol) -> Player {
    var playerOne = Player(name: "a", symbol: .x)
    
    if name != "" {
        playerOne.name = name
        playerOne.symbol = symbolValue
    }
    return playerOne
}
let a = createPlayer(name: "Kaya", symbolValue: .o)
print(a)

// Write a type Game which holds two players with differing symbols
struct Game {
    var playerFirst: Player
    var playerSecond: Player
}

//  Write a function "createGame" which accepts two players and returns a Game if and only if the symbols are not equal.
func createGame(playerOne: Player, playerTwo: Player) -> Game? {
    if playerOne.symbol != playerTwo.symbol {
        let gameplayers = Game(playerFirst: playerOne, playerSecond: playerTwo)
        return gameplayers
    } else {
        print("The symbols are the same, no game.")
        return nil
    }
}
var playerFirst = Player(name: "Liz", symbol: .o)
var playerSecond = Player(name: "Johnny", symbol: .x)
let b = createGame(playerOne: playerFirst, playerTwo: playerSecond)
print(b)

// Add a property "moves" to the type "Game." a move should consist of a player and a location within a 3x3 grid.
struct GameMove {
    var playerFirst: Player
    var playerSecond: Player
    var moves: (Player, Location)
}

var locationknight: Location = .init(x: (1,0,0), y: (0, 1, 0))
print(locationknight)

func play(playerOne: Player, locationOne: Location, gameOne: gameMove) -> GameMove {
    
}

