module Features
  def creates_todo(todo)
    click_on 'Add a new todo'
    fill_in 'Title', with: todo
    click_on 'Submit'
  end

  def have_todo(todo)
    have_css('.todos li', text: todo)
  end

  def have_completed_todo(todo)
    have_css('.todos li.completed', text: todo)
  end
end

