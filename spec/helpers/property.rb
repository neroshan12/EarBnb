module PropertyHelpers
  def create_property(address: 'Test Street', description: 'this is an awesome house')
    visit '/properties/new'
    fill_in      :address1, with: address
    fill_in      :price, with: 10
    select       '3', from: 'bedrooms'
    fill_in      :description, with: description
    attach_file('file', 'app/public/earbnb/buckhouse.jpg')
    click_button 'Submit'
  end

  def edit_property(address: 'New Street', description: 'this has been changed')
    fill_in      :address1, with: address
    fill_in      :price, with: 20
    select       '2', from: 'bedrooms'
    fill_in      :description, with: description
    click_button 'Submit'
  end
end
