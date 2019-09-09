require "spec_helper"

feature "Contact Creation" do
  scenario "allows acees to contacts page" do
    visit new_contacts_path
    sing_up

    expect(page).to have_content I18n.t('contacts.contacts_us')
  end
end
