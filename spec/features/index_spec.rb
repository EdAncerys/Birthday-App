feature '@index' do
  scenario 'should have greeting' do
    visit('/')
    expect(page).to have_content 'Birthday App Home Page'
  end

  scenario 'should ask for name' do
    visit('/')
    expect(page).to have_content 'Whats Your Name?'
  end

end