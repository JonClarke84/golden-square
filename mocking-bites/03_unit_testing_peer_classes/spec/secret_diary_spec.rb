require 'secret_diary'

RSpec.describe SecretDiary do
  context 'given a diary as an input' do
    it 'raises the error "Go away!" if .read is called and the diary is locked' do
      diary = double :diary
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"
    end

    it 'returns the diary contents if it is unlocked' do
      diary = double :diary, read: "This is my secret diary entry"
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "This is my secret diary entry"
    end

    it 'locks the contents and prevents them from being read' do
      diary = double :diary, read: "This is my secret diary entry"
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end
end