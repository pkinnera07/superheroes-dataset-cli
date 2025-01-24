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
    "Name: #{@name}\n" +
    "Real Name: #{@real_name}\n" +
    "Key Abilities: #{@key_abilities}\n" +
    "Origin Story: #{@origin_story}\n" +
    "Team Affiliation: #{@team_affiliation}\n" +
    "Notable Enemies: #{@notable_enemies}\n" +
    "Weaknesses: #{@weaknesses}\n"
  end
end
