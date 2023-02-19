
class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech: String){
        print("Says: \(speech)")
    }
    override func attack() { //enemy classının içinde olan fonksiyonu üstüne yazıyoruz override
        super.attack() //superclass olan enemyden çağırıyoruz o halinin de çalışması için
        print("Spit fire, does 10 damage")
    }
    override func move() {
        print("Fly forwards")
    }
}
