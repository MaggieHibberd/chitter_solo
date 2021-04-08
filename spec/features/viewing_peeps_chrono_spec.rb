feature 'Viewing peep in chronological order' do 
    scenario 'Peeps are displayed in chronological order' do 
  
      peep_one = ChitterWeb.create(peep: 'My first peep')
      peep_two = ChitterWeb.create(peep:'Get to the chopper')
      peep_three = ChitterWeb.create(peep: 'We have landed') 

      visit('/peeps')
  
      expect(page).to have_selector("ul li:nth-child(3)", text: Date.parse(peep_one.timestamp))
      expect(page).to have_selector("ul li:nth-child(2)", text: Date.parse(peep_two.timestamp))
      expect(page).to have_selector("ul li:nth-child(1)", text: Date.parse(peep_three.timestamp))
    end 
  end