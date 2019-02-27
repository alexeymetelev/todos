require 'rails_helper'

describe 'User creates new todo' do
  scenario 'successfully' do
    skip

    sign_in

    create_todo('buy eggs')

    expect(page).to display_todo('buy eggs')
  end
end
