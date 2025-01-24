require_relative "superhero"

class Data
  attr_accessor :superheroes

  def initialize
    @superheroes= []
    puts 'Welcome to superheroes Dataset!' 
    add_default_superheroes
  end

  def run
    loop do
      puts "Select an Option:"
      puts "1. Find a Superhero"
      puts "2. Add a Superhero"
      puts "3. Display all Superheroes"
      puts "4. Exit"

      option=gets.chomp.to_i

      case option
      when 1
        find_superhero
      when 2
        add_superhero
      when 3
        display_all
      when 4
        puts "See you again Later!!"
        break
      else
        puts "Invalid Selection!!"
        puts "Please choose an Option from the menu: "
      end
    end
  end

  def find_superhero
    superheroes.each do |i|
      puts i
    end
  end

  def add_superhero

  end

  def display_all
    superheroes.each do |i|
      puts i
    end
  end

  def add_default_superheroes
    spider_man = Superhero.new(
      "Spider-Man", 
      "Peter Parker", 
      "Superhuman strength, agility, wall-crawling, spider-sense, web-shooting", 
      "Peter Parker gains his powers from a radioactive spider bite. After the death of his Uncle Ben, he learns the responsibility that comes with his powers.", 
      "Avengers, Spider-Man Family, occasionally the Fantastic Four", 
      "Green Goblin, Doctor Octopus, Venom, Sandman, Kingpin", 
      "Physically weaker than many, personal life makes him vulnerable."
    )

    iron_man = Superhero.new(
      "Iron Man", 
      "Tony Stark", 
      "Genius-level intellect, powered armor suit with enhanced strength, flight, energy blasts, advanced weaponry", 
      "Tony Stark builds a suit to escape from terrorists and later uses it to fight crime as Iron Man, facing his flaws like alcoholism along the way.", 
      "Avengers, former member of S.H.I.E.L.D.", 
      "Mandarin, Obadiah Stane (Iron Monger), Whiplash, Ultron, Doctor Doom", 
      "Dependence on his armor and vulnerability to alcohol dependency."
    )

    captain_america = Superhero.new(
      "Captain America", 
      "Steve Rogers", 
      "Enhanced strength, agility, endurance, and healing; expert in hand-to-hand combat; unbreakable shield", 
      "Steve Rogers becomes the Super Soldier Captain America during World War II. After being frozen in ice for decades, he leads the fight for justice.", 
      "Avengers, Invaders, Secret Avengers", 
      "Red Skull, Baron Zemo, Crossbones, Arnim Zola", 
      "Human, physically still vulnerable; his idealism and sense of duty sometimes cloud judgment."
    )

    thor = Superhero.new(
      "Thor", 
      "Thor Odinson", 
      "Superhuman strength, flight (via Mjolnir), control over lightning, immortality, vast combat skills", 
      "Thor, the God of Thunder, was banished to Earth and learns humility. He uses his godly powers to defend both Earth and Asgard from cosmic threats.", 
      "Avengers, Asgardian pantheon", 
      "Loki, Hela, Surtur, Enchantress, The Executioner", 
      "Vulnerable when separated from Mjolnir, and struggles with arrogance."
    )
    
    @superheroes << spider_man
    @superheroes << iron_man
    @superheroes << captain_america
    @superheroes << thor
  end
end
