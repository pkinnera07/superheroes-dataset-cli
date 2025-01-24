require 'minitest/autorun'
require './superhero'

class TestSuperhero < Minitest::Test
  def setup
    @hero = Superhero.new(
      "Spider-Man", "Peter Parker", "Superhuman strength", 
      "Bitten by a radioactive spider", "Avengers", 
      "Green Goblin", "Weakness to spider venom"
    )
  end

  def test_initialization
    assert_equal "Spider-Man", @hero.name, "Expected superhero name to be 'Spider-Man', but got #{@hero.name}"
    assert_equal "Peter Parker", @hero.real_name, "Expected real name to be 'Peter Parker', but got #{@hero.real_name}"
    assert_equal "Superhuman strength", @hero.key_abilities, "Expected key abilities to be 'Superhuman strength', but got #{@hero.key_abilities}"
    assert_equal "Bitten by a radioactive spider", @hero.origin_story, "Expected origin story to be 'Bitten by a radioactive spider', but got #{@hero.origin_story}"
    assert_equal "Avengers", @hero.team_affiliation, "Expected team affiliation to be 'Avengers', but got #{@hero.team_affiliation}"
    assert_equal "Green Goblin", @hero.notable_enemies, "Expected notable enemies to be 'Green Goblin', but got #{@hero.notable_enemies}"
    assert_equal "Weakness to spider venom", @hero.weaknesses, "Expected weaknesses to be 'Weakness to spider venom', but got #{@hero.weaknesses}"
  end

  def test_to_s
    expected_output = "NAME: Spider-Man\nREAL NAME: Peter Parker\nKEY ABILITIES: Superhuman strength\nORIGIN STORY: Bitten by a radioactive spider\nTEAM AFFILIATION: Avengers\nNOTABLE ENEMIES: Green Goblin\nWEAKNESS: Weakness to spider venom\n"
    assert_equal expected_output, @hero.to_s, "The superhero's string representation doesn't match the expected output."
  end
end
