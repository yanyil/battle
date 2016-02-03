require 'spec_helper.rb'

feature 'see hit points' do
  scenario 'seeing hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mittens\'s hitpoints = 60HP'
  end

end