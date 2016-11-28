require ('minitest/autorun')
require_relative ('../team.rb')

class TeamSpec < MiniTest::Test

  def test_team_name
    team_name = Team.new("FC Barcelona", ["Messi", "Pique", "Xavi"], "Pep Guardiola")
    assert_equal("FC Barcelona", team_name.name())
  end

  def test_team_players
    team_players = Team.new("FC Barcelona", ["Messi", "Pique", "Xavi"], "Pep Guardiola")
    assert_equal(["Messi", "Pique", "Xavi"], team_players.players())
  end

  def test_coach_name
    team_coach = Team.new("FC Barcelona", ["Messi", "Pique", "Xavi"], "Pep Guardiola")
    assert_equal("Pep Guardiola", team_coach.coach())
  end

  def test_new_coach_name
    team_coach = Team.new("FC Barcelona", ["Messi", "Pique", "Xavi"], "Pep Guardiola")
    team_coach.update_coach("Luis Enrique")
    assert_equal("Luis Enrique", team_coach.coach())
  end

  def test_team_players_after_drafting
    team_players = Team.new("FC Barcelona", ["Messi", "Pique", "Xavi"], "Pep Guardiola")
    team_players.add_player("Pepe")
    assert_equal(["Messi", "Pique", "Xavi", "Pepe"], team_players.players())
  end

  def test_team_players_name_check_true
    team_players = Team.new("FC Barcelona", ["Messi", "Pique", "Xavi"], "Pep Guardiola")
    checked = team_players.name_check("Messi")
    assert_equal(true, checked)
  end

  def test_team_players_name_check_false
    team_players = Team.new("FC Barcelona", ["Messi", "Pique", "Xavi"], "Pep Guardiola")
    checked = team_players.name_check("Pipo")
    assert_equal(false, checked)
  end

  def test_win_or_loose_won
    team = Team.new("FC Barcelona", ["Messi", "Pique", "Xavi"], "Pep Guardiola")
    won = team.win_or_loose("win")
    assert_equal(3, won)
  end

  def test_win_or_loose_lost
    team = Team.new("FC Barcelona", ["Messi", "Pique", "Xavi"], "Pep Guardiola")
    lost = team.win_or_loose("lost")
    assert_equal(0, lost)
  end

  def test_win_or_loose_tie
    team = Team.new("FC Barcelona", ["Messi", "Pique", "Xavi"], "Pep Guardiola")
    tie = team.win_or_loose("tie")
    assert_equal(1, tie)
  end

end