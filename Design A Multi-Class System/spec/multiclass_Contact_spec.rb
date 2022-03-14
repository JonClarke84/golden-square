require 'multiclass_Contact'

RSpec.describe Contact do
  context 'given two strings' do
    it 'returns the formatted contact name and number' do
      new_contact = Contact.new("Dave", "07123123123")
      expect(new_contact.display_contact).to eq "Dave - 07123123123"
    end
    
    it 'returns the name' do
      new_contact = Contact.new("Dave", "07123123123")
      expect(new_contact.name).to eq "Dave"
    end
    
    it 'returns the number' do
      new_contact = Contact.new("Dave", "07123123123")
      expect(new_contact.number).to eq "07123123123"
    end
  end
end
