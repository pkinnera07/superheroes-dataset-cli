require 'minitest/autorun'
require './dataset' 
require './superhero'


class TestDataset < Minitest::Test
  def setup
    @dataset = Dataset.new 
  end

  def test_add_default_superheroes
    # Check that 4 default superheroes are added to the dataset
    assert_equal 4, @dataset.superheroes.length, "Expected 4 superheroes, but got #{@dataset.superheroes.length}"
    assert_equal "Spider-Man", @dataset.superheroes.first.name, "Expected 'Spider-Man' to be the first superhero"
    assert_equal "Thor", @dataset.superheroes.last.name, "Expected 'Thor' to be the last superhero"
  end
end
