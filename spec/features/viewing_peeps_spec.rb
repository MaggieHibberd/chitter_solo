require 'pg'

feature 'visiting the homepage' do
  scenario 'the page title is visible' do
    visit('/')
    expect(page).to have_content 'Peeps'
  end
end

feature 'Viewing a peep' do 
  scenario 'visiting chitters peep route to view peeps' do

    ChitterWeb.create(peep: 'My first peep')
    ChitterWeb.create(peep:'Get to the chopper') 
    ChitterWeb.create(peep: 'We have landed') 

    visit('/peeps')

    expect(page).to have_content 'My first peep'
    expect(page).to have_content 'Get to the chopper'
    expect(page).to have_content 'We have landed'
  end 
end



