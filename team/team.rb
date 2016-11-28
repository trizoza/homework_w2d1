class Team

def initialize(name, players, coach)
  @name = name
  @players = players
  @coach = coach
  @points = 0
end

def name()
  return @name
end

def players()
  return @players
end

def coach()
  return @coach
end

def update_coach(new_coach)
  @coach = new_coach
end

def add_player(new_player)
  @players.push(new_player)
end

def name_check(search_player_name)
  @players.include? (search_player_name)
end

def win_or_loose(result)
  if result == "win"
    @points += 3
  elsif result == "tie"
    @points += 1
  else
    @points
  end
end


end