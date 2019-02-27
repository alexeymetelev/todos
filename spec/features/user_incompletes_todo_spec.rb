require 'rails_helper'

feature 'User incompletes todo' do
  scenario 'successfully' do
    skip

    sign_in

    create_todo('buy milk')
    click_on 'Mark Complete'
    click_on 'Mark Incomplete'

    expect(page).to_not display_completed_todo('buy milk')
    expect(page).to display_todo('buy milk')
  end
end
