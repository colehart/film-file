RSpec.describe 'User' do
  it 'should see a welcome message' do
    welcome_msg = 'thanks for stopping by'

    visit('/')

    save_and_open_page

    within('#greeting') do
      expect(page).to have_content(welcome_msg)
    end
  end
end
