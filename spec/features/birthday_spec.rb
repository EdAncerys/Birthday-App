feature 'birthday view' do
  scenario 'should have Happy Birthday greet' do
    allow_any_instance_of(Time).to receive(:day) { 5 }
    allow_any_instance_of(Time).to receive(:month) { 3 }
    visit('/')
    fill_in :name, with: 'Dave'
    fill_in :day, with: 5
    select 'March', from: 'month'
    click_button 'Submit'
    expect(page).to have_content 'Happy Brthday Dave'
  end

  scenario 'should return days till Birthday' do
    allow_any_instance_of(Time).to receive(:day) { 11 }
    allow_any_instance_of(Time).to receive(:month) { 3 }
    visit('/')
    fill_in :name, with: 'Dave'
    fill_in :day, with: 12
    select 'April', from: 'month'
    click_button 'Submit'
    expect(page).to have_content '1 days and 1 month till your Birthday Dave'
  end
end