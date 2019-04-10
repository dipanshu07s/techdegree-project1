

let player1 = ["name": "Joe Smith", "height": "42", "soccerExperience": "yes", "guardianName": "Jim and Jan Smith"]
let player2 = ["name": "Jill Tanner", "height": "36", "soccerExperience": "yes", "guardianName": "Clara Tanner"]
let player3 = ["name": "Bill Bon", "height": "43", "soccerExperience": "yes", "guardianName": "Sara and Jenny Bon"]
let player4 = ["name": "Eva Gordon", "height": "45", "soccerExperience": "no", "guardianName": "Wendy and Mike Gordon"]
let player5 = ["name": "Matt Gill", "height": "40", "soccerExperience": "no", "guardianName": "Charles and Sylvia Gill"]
let player6 = ["name": "Kimmy Stein", "height": "41", "soccerExperience": "no", "guardianName": "Bill and Hillary Stein"]
let player7 = ["name": "Sammy Adams", "height": "45", "soccerExperience": "no", "guardianName": "Jeff Adams"]
let player8 = ["name": "Karl Saygan", "height": "42", "soccerExperience": "yes", "guardianName": "Heather Bledsoe"]
let player9 = ["name": "Suzane Greenberg", "height": "44", "soccerExperience": "yes", "guardianName": "Henrietta Dumas"]
let player10 = ["name": "Sal Dali", "height": "41", "soccerExperience": "no", "guardianName": "Gala Dali"]
let player11 = ["name": "Joe Kavalier", "height": "39", "soccerExperience": "no", "guardianName": "Sam and Elaine Kavalier"]
let player12 = ["name": "Ben Finkelstein", "height": "44", "soccerExperience": "no", "guardianName": "Aaron and Jill Finkelstein"]
let player13 = ["name": "Diego Soto", "height": "41", "soccerExperience": "yes", "guardianName": "Robin and Sarika Soto"]
let player14 = ["name": "Chloe Alaska", "height": "47", "soccerExperience": "no", "guardianName": "David and Jamie Alaska"]
let player15 = ["name": "Arnold Willis", "height": "43", "soccerExperience": "no", "guardianName": "Claire Willis"]
let player16 = ["name": "Phillip Helm", "height": "44", "soccerExperience": "yes", "guardianName": "Thomas Helm and Eva Jones"]
let player17 = ["name": "Les Clay", "height": "42", "soccerExperience": "yes", "guardianName": "Wynonna Brown"]
let player18 = ["name": "Herschel Krustofski", "height": "45", "soccerExperience": "yes", "guardianName": "Hyman and Rachel Krustofski"]

let allPlayers = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]
let numberOfPlayer = allPlayers.count

var expPlayers = [[String: String]]()
var inExpPlayers = [[String: String]]()

var teamDragons = [[String: String]]()
var teamSharks = [[String: String]]()
var teamRaptors = [[String: String]]()
let numberOfTeams = 3

let numberOfPlayersInOneTeam = numberOfPlayer / numberOfTeams

for player in allPlayers {
    if player["soccerExperience"] == "yes" {
        expPlayers.append(player)
    } else if player["soccerExperience"] == "no" {
        inExpPlayers.append(player)
    }
}

let totalExpPlayers = expPlayers.count
let expPlayersInOneTeam = totalExpPlayers / numberOfTeams

func addPlayersToTeams(from players: [[String: String]], playersInOneTeam: Int) {
    for player in players {
        if teamDragons.count < playersInOneTeam {
            teamDragons.append(player)
        } else if teamSharks.count < playersInOneTeam {
            teamSharks.append(player)
        } else if teamRaptors.count < playersInOneTeam {
            teamRaptors.append(player)
        }
    }
}

addPlayersToTeams(from: expPlayers, playersInOneTeam: expPlayersInOneTeam)
addPlayersToTeams(from: inExpPlayers, playersInOneTeam: numberOfPlayersInOneTeam)

let allTeams = [teamDragons, teamSharks, teamRaptors]
var letters = [String]()

let dragonsPracticeTime = "March 17, 1pm"
let sharksPracticeTime = "March 17, 3pm"
let raptorsPracticeTime = "March 18, 1pm"

for team in allTeams {
    for player in team {
        switch team {
        case teamDragons: letters.append("This is to inform \(player["guardianName"]!) that \(player["name"]!) has been elected to team dragons and team practice will take place at \(dragonsPracticeTime)")
        case teamSharks: letters.append("This is to inform \(player["guardianName"]!) that \(player["name"]!) has been elected to team Sharks and team practice will take place at \(sharksPracticeTime)")
        case teamRaptors: letters.append("This is to inform \(player["guardianName"]!) that \(player["name"]!) has been elected to team Raptors and team practice will take place at \(raptorsPracticeTime)")
        default: continue
        }
    }
}

for letter in letters {
    print(letter)
}



































