class Superhero
  attr_accessor :name, :real_name, :key_abilities, :origin_story, :team_affiliation, :notable_enemies, :weaknesses

  def initialize(name, real_name, key_abilities, origin_story, team_affiliation, notable_enemies, weaknesses)
    @name = name
    @real_name = real_name
    @key_abilities = key_abilities
    @origin_story = origin_story
    @team_affiliation = team_affiliation
    @notable_enemies = notable_enemies
    @weaknesses = weaknesses
  end

  def to_s
    "NAME: #{@name}\n" +
    "REAL NAME: #{@real_name}\n" +
    "KEY ABILITIES: #{@key_abilities}\n" +
    "ORIGIN STORY: #{@origin_story}\n" +
    "TEAM AFFILIATION: #{@team_affiliation}\n" +
    "NOTABLE ENEMIES: #{@notable_enemies}\n" +
    "WEAKNESS: #{@weaknesses}\n"
  end
end
