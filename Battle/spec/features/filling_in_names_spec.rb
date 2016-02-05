require 'spec_helper.rb'

feature 'players signing in' do
  scenario 'both players enter names' do
    visit '/'
    fill_in 'player1_name', with: 'Yan-Yi'
    fill_in 'player2_name', with: 'Douglas'
    click_button('Start Match!')
    expect(page).to have_content "Let the match begin, Yan-Yi vs. Douglas!"
  end
end