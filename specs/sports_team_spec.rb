require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestTeam < MiniTest::Test

  def test_team_name
    teamA = Team.new("Blue", ["Kira", "Jack", "Peter"], "Blair")
    assert_equal("Blue", teamA.get_team_name())
  end

  def test_team_players
    teamA = Team.new("Blue", ["Kira", "Jack", "Peter"], "Blair")
    assert_equal(["Kira", "Jack", "Peter"], teamA.get_team_players())
  end

  def test_team_coach
    teamA = Team.new("Blue", ["Kira", "Jack", "Peter"], "Blair")
    assert_equal("Blair", teamA.get_team_coach())
  end

  def test_set_coach_name
    teamA = Team.new("Blue", ["Kira", "Jack", "Peter"], "Blair")
    teamA.set_coach_name("Robin")
    assert_equal("Robin", teamA.set_coach_name("Robin"))
  end

  def test_add_player_players
    teamA = Team.new("Blue", ["Kira", "Jack", "Peter"], "Robin")
    assert_equal(["Kira", "Jack", "Peter","Patent"], teamA.add_player_players("Patent"))
  end

  def does_player_name_exist
    teamA = Team.new("Blue", ["Kira", "Jack", "Peter"], "Robin")
    assert_equal(true, teamA.does_player_name_exist("Kira"))
  end

  def win_or_lose
    teamA = Team.new("Blue", ["Kira", "Jack", "Peter"], "Robin")
    assert_equal("win", teamA.win_or_lose("win"))
  end

end
