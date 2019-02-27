describe CompleteTodo do
  it 'completes todo' do
    todo = Todo.create!(title: 'buy milk')

    CompleteTodo.new(todo).call

    expect(todo).to be_completed
  end
end
