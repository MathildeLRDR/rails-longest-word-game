class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      @letters.push(('a'..'z').to_a.sample)
    end
  end

  def score
    @score = 0
    user_letters = params[:word].split("")
    letters = params[:letters].to_s

    user_letters.each do |letter| user_letters.include?(letters)
      @score += 1
    end

    if @score == 0
      return "so bad"
    else
      return "your score is #{@score}"
    end
  end
end
