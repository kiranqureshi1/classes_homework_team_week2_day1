class Team

  # attr_reader :name, :players, :coach
  # attr_writer :coach
  # attr_accessor :coach :points

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def get_team_name
    return @name
  end
  def get_team_players
    return @players
  end

  def get_team_coach
    return @coach
  end

  def set_coach_name(new_name)
    return @coach = new_name
  end

  def add_player_players(new_player)
    return @players << new_player
  end

  def does_player_name_exist(name)
    for player in players
      if player == name
        return true
      end
    end
  end

 def win_or_lose(result)
   if result.downcase == "win"
     @points += 1
   end
 end

end
