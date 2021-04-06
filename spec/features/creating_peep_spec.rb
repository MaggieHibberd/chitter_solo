feature 'Craeting a new peep' do 
  scenario 'A user is able to create a new peep' do 
    visit('/peeps/new')
    fill_in('peep', with: 'Hope everyone is having a smasher of a day!')
    click_button('Submit')
    expect(page).to have_content 'Hope everyone is having a smasher of a day!'
  end 
end 
