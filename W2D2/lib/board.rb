class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14)  {Array.new}
    place_stones
  end

  def place_stones
    @cups.each_index do |idx|
      unless [6, 13].include?(idx)
        4.times do
          @cups[idx] << :stone
        end
      end
    end
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if start_pos > 12 || start_pos < 0 || start_pos == 6 || @cups[start_pos].empty?
      raise "Invalid starting cup"
    end
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    cup_index = start_pos + 1

    until stones.length == 0
      if current_player_name == @name1
        @cups[cup_index] += [:stone] unless cup_index == 13
      elsif current_player_name == @name2
        @cups[cup_index] += [:stone] unless cup_index == 6
      end
      cup_index = 0 if cup_index == 13
      cup_index += 1
      stones.pop
    end
    self.render
    next_turn(cup_index - 1)
  end

  def next_turn(ending_cup_idx)
    ending_cup_idx = 13 if ending_cup_idx == -1
    return @cups[ending_cup_idx]
    if @cups[ending_cup_idx].length == 1
      :switch
    elsif ending_cup_idx == 13 || ending_cup_idx == 6
      :prompt
    else
      ending_cup_idx
    end
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? { |cup| cup.empty? } || @cups[7..12].all? { |cup| cup.empty? }
  end

  def winner
    case @cups[6] <=> @cups[13]
    when -1
      @name2
    when 0
      :draw
    when 1
      @name1
    end
  end
end
