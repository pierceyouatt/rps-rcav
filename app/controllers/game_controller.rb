class GameController < ApplicationController
  def play_rock
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "rock"
      @result = "tied"
    elsif @computer_move == "paper"
      @result = "lost"
    else
      @result = "won"
    end
    render("/calc_templates/play_rock_view.html.erb")
  end
  def play_paper
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "rock"
      @result = "won"
    elsif @computer_move == "paper"
      @result = "tied"
    else
      @result = "lost"
    end
    render("/calc_templates/play_paper_view.html.erb")
  end
  def play_scissors
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "rock"
      @result = "lost"
    elsif @computer_move == "paper"
      @result = "won"
    else
      @result = "tied"
    end
    render("/calc_templates/play_scissors_view.html.erb")
  end
end
