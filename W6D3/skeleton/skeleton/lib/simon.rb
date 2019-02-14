# require "spec_helper"
require "byebug"

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1 
    @game_over = false
    @seq = []

  end

  def play

    until @game_over
      take_turn
    end

    if @game_over
      game_over_message
      reset_game
    end

  end

  def take_turn
    show_sequence
    require_sequence

    if !@game_over
      round_success_message
      @sequence_length += 1 
    end

  end

  def show_sequence
    self.add_random_color

  end

  def require_sequence
    

    
    dup_seq = @seq.dup

    while !dup_seq.empty?
      puts "enter a seq"
      input = gets.chomp
      if input != dup_seq.shift
        @game_over = true
      end
    end

  end

  def add_random_color
    random_c = COLORS.sample
    @seq << random_c

  end

  def round_success_message

    puts "You got them all.  Great!  Now it's gonna get harder.."

  end

  def game_over_message
    if @game_over
      puts "Good try, bro!  But that last one was wrong.  Give it another shot!"
    end
  end

  def reset_game

    @sequence_length = 1
    @game_over = false
    @seq = []

  end
end
