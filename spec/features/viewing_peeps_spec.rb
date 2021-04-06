require 'pg'

#   feature 'visiting the homepage' do
#     scenario 'the page title is visible' do
#     visit('/')
#     expect(page).to have_content 'Peeps'
#   end
# end

feature 'Viewing a peep' do 
  scenario 'visiting chitters peep route to view peeps' do
    connection = PG.connect(dbname: 'chitter_management_test')

    connection.exec("INSERT INTO peeps VALUES(1, 'My first peep');")
      # connection.exec("INSERT INTO peeps (content) VALUES ('Get to the chopper');")
      # connection.exec("INSERT INTO peeps (content) VALUES ('We have landed');")

    visit('/peeps')

    expect(page).to have_content 'My first peep'
    # expect(page).to have_content 'Get to the chopper'
    # expect(page).to have_content 'We have landed'
  end 
end



