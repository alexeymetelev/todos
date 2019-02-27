require 'rails_helper'

feature 'User completes todo' do
  scenario 'successfully' do
    skip

    sign_in
    create_todo('buy cheese')

    click_on 'Mark Complete'

    expect(page).to display_completed_todo('buy cheese')
  end
end
