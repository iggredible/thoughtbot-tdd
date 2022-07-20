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

  describe '#complete!' do
    it 'updates a todo completed_at timestamp' do
      todo = Todo.create(completed_at: nil)
      todo.complete!
      todo.reload

      expect(todo).to be_completed
    end
  end
  
  describe '#incomplete!' do
    it 'makes nil a todo completed_at' do
      todo = Todo.create(completed_at: Time.current)
      todo.incomplete!
      todo.reload

      expect(todo).not_to be_completed
    end
  end
end
