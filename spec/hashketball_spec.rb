class Hashketball
  attr_accessor :players

  def initialize
    @players = [
      {
        name: "Alan Anderson",
        number: 0,
        shoe: 16,
        points: 22,
        rebounds: 12,
        assists: 12,
        steals: 3,
        blocks: 1,
        slam_dunks: 1
      },
      {
        name: "Reggie Evans",
        number: 30,
        shoe: 14,
        points: 12,
        rebounds: 12,
        assists: 12,
        steals: 12,
        blocks: 12,
        slam_dunks: 7
      },
      {
        name: "Brook Lopez",
        number: 11,
        shoe: 17,
        points: 17,
        rebounds: 19,
        assists: 10,
        steals: 3,
        blocks: 1,
        slam_dunks: 15
      },
      {
        name: "Mason Plumlee",
        number: 1,
        shoe: 19,
        points: 26,
        rebounds: 12,
        assists: 6,
        steals: 3,
        blocks: 8,
        slam_dunks: 5
      },
      {
        name: "Jason Terry",
        number: 31,
        shoe: 15,
        points: 19,
        rebounds: 2,
        assists: 2,
        steals: 4,
        blocks: 11,
        slam_dunks: 1
      }
    ]
  end

  #num_points_scored
  def num_points_scored(name)
    player = @players.find { |player| player[:name] == name }
    player[:points]
  end

  #shoe_size
  def shoe_size(name)
    player = @players.find { |player| player[:name] == name }
    player[:shoe]
  end

  #team_colors
  def team_colors(team_name)
    if team_name == "Brooklyn Nets"
      "Black and White"
    elsif team_name == "Charlotte Hornets"
      "Turquoise and Purple"
    end
  end

  #team_names
  def team_names
    @players.map { |player| player[:team_name] }.uniq
  end

  #player_numbers
  def player_numbers
    @players.map { |player| player[:number] }
  end

  #player_stats
  def player_stats(name)
    player = @players.find { |player| player[:name] == name }
    player.except(:name)
  end

  #big_shoe_rebounds
  def big_shoe_rebounds
    player = @players.max_by { |player| player[:shoe] }
    player[:rebounds]
  end
end
