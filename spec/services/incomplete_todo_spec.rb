describe IncompleteTodo do
  it 'incompletes todo' do
    todo = Todo.create!(title: 'buy milk')

    IncompleteTodo.new(todo).call

    expect(todo).not_to be_completed
  end
end
