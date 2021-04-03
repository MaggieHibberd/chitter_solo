feature 'Viewing bookmarks' do
  feature 'visiting the homepage' do
    scenario 'the page title is visible' do
    visit('/')
    expect(page).to have_content 'Peeps'
  end
end
end

feature 'Viewing a peep' do 
    scenario 'visiting chitters index page' do 
    visit('/peeps')
    expect(page).to have_content 'My first peep'
    expect(page).to have_content 'Get to the chopper'
    expect(page).to have_content 'We have landed'
    end 
  end


