feature 'Viewing a peep' do 
  feature 'Visiting homepage' do 
    scenario 'visiting chitters index page' do 
    visit('/')
    expect(page).to have_content 'Chitter'
    end 
  end
end