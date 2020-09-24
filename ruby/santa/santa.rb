# frozen_string_literal: true

class SecretSanta
  def initialize(participants)
    @people = scramble(participants) 
    @index  = create_index
  end

  # given a participant it returns the
  # other participant that should receive
  # his/her present.
  def friend(person)
    return nil if people.nil? || people.size < 2

    people[index[person] + 1 % people.size]
  end


  private

  attr_accessor :people, :index

  def scramble(data)
    (0...data.size).map { |_| data.delete(data[rand(data.size)]) }
  end

  def create_index
    people.map.with_index { |v, i| { v => i }}.inject(:merge)
  end
end
