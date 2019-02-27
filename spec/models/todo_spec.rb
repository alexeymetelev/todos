require 'rails_helper'

describe Todo, '#completed?' do
  it 'returns true if complted_at is set' do
    todo = Todo.new(completed_at: Time.zone.now)

    expect(todo).to be_completed
  end

  it 'returnes false if completed_at is null' do
    todo = Todo.new

    expect(todo).not_to be_completed
  end
end
