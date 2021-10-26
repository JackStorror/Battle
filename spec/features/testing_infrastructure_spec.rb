
feature "Infrastructure working?" do
  
  scenario "Testing infrastructure working!" do 
    visit '/'
    expect(page).to have_content "Testing infrastructure working!"
  end
  scenario "Enter two players name" do 
    visit '/'
    fill_in 'player1', with: 'player1'
    fill_in 'player2', with: 'player2'
  click_button "submit"
  expect(page).to have_content 'player1 vs player2'
  end 
end