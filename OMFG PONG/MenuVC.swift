import SpriteKit

enum gameType {
  case easy
  case wobble
  case player2
}

var currentGameType: gameType = .easy
var navController = UINavigationController()
var storyBoard = UIStoryboard()

func presentMenuVC() {
  let menuVC = storyBoard.instantiateViewController(withIdentifier: "menuVC") as! MenuVC
  navController.pushViewController(menuVC, animated: true)
}

class MenuVC : UIViewController {
  
  @IBAction func Player2(_ sender: Any) {
    moveToGame(game: .player2)
  }
  @IBAction func Easy(_ sender: Any) {
    moveToGame(game: .easy)
  }
  @IBAction func Wobble(_ sender: Any) {
    moveToGame(game: .wobble)
  }
  
  func moveToGame(game: gameType) {
    
    navController = self.navigationController!
    storyBoard = self.storyboard!
    
    let gameVC = self.storyboard?.instantiateViewController(withIdentifier: "gameVC") as! GameViewController
    
    currentGameType = game
    
    self.navigationController?.pushViewController(gameVC, animated: true)
    
  }
}
