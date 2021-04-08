feature 'Craeting a new peep' do 
  scenario 'A user is able to create a new peep' do 
    visit('/peeps/new')
    fill_in('peep', with: 'My first peep')
    click_button('Submit')
    expect(page).to have_content 'My first peep'
  end 
end 
