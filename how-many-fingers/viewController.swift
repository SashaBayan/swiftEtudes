import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guess: UITextField!
    
    @IBAction func guessButton(sender: AnyObject) {
        
        //produce a random number between 0 and 5
        var randomNumber = arc4random_uniform(6)
        
        //convert guess.text, which is a string, to an integer
        var guessInt = guess.text.toInt()
        
        if(guessInt != nil){
            //convert randomNumber to integer so it can be compared to the guessInt
            if(Int(randomNumber) == guessInt){
                result.text = "You guessed right!"
            } else {
                result.text = "Try again!"
            }
        } else {
            result.text = "Please enter a number"
        }
        
    }
    
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

