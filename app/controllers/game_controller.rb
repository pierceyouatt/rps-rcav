class GameController < ApplicationController
  def play_rock
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "rock"
      @result = "tied"
      @boxcolor = "warning"
    elsif @computer_move == "paper"
      @result = "lost"
      @boxcolor = "danger"
    else
      @result = "won"
      @boxcolor = "success"
    end
    render("/calc_templates/play_rock_view.html.erb")
  end
  def play_paper
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "rock"
      @result = "won"
      @boxcolor = "success"
    elsif @computer_move == "paper"
      @result = "tied"
      @boxcolor = "warning"
    else
      @result = "lost"
      @boxcolor = "danger"
    end
    render("/calc_templates/play_paper_view.html.erb")
  end
  def play_scissors
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "rock"
      @result = "lost"
      @boxcolor = "danger"
    elsif @computer_move == "paper"
      @result = "won"
      @boxcolor = "success"
    else
      @result = "tied"
      @boxcolor = "warning"
    end
    render("/calc_templates/play_scissors_view.html.erb")
  end
  def rules
    render("/calc_templates/rules_view.html.erb")
  end
end
