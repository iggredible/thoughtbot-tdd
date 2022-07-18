require 'rails_helper'

RSpec.describe Todo, type: :model do
  describe '#completed?' do
    it 'returns true if completed_at is set' do
      todo = Todo.new(completed_at: Time.current)
      expect(todo).to be_completed # RSpec attribute matched matches the #completed? method
    end

    it 'returns false if completed_at is not set' do
      todo = Todo.new(completed_at: nil)
      # expect(todo.completed?).to eq(false)
      expect(todo).to_not be_completed
    end
  end
end
