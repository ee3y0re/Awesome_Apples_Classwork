class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    while !game_over
      take_turn
    end

    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    self.sequence_length += 1
    round_success_message if !game_over
  end

  def show_sequence
    add_random_color
  end

  def require_sequence

  end

  def add_random_color
    maybe_next = COLORS.sample
    if self.seq.last == maybe_next
      add_random_color
    else
      self.seq << maybe_next
    end
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end
