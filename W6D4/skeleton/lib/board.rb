require "byebug"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { Array.new   }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups[0...6].each do |cup|
      4.times do 
      cup << :stone    
      end
    end

    @cups[7...13].each do |cup|  
      4.times do 
        cup << :stone    
      end
    end

  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 14
      raise "Invalid starting cup"
    end

    if @cups[start_pos].length == 0
      raise "Starting cup is empty"
    end

  end

  def make_move(start_pos, current_player_name)
    stores = [@cups[6], @cups[13]]
    stones = @cups[start_pos].length
    @cups[start_pos] = []
    current_pos = (start_pos + 1) % 14

    stones.times do

      if stores.include?(current_pos) || it belongs to the current player
        that store receives the stone
      else



  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    side1 = @cups[0...6].all? { |cup|  cup == [] }
    side2 = @cups[7...13].all? { |cup| cup == []  }
    return side1 || side2
  end

  def winner
    if @cups[6] == @cups[13]
      return :draw
    end

    if @cups[6] > @cups[13]
      return name1
    else
      return name2
    end

  end
end
