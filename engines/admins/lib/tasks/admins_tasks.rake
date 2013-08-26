desc 'Fetch banks/branches info.'
namespace :admins do
  namespace :banks do
    task :fetch => :environment do
      ('0001'..'9999').each do |code|
        BankInfoFetcher.perform_async(code)
      end
    end
  end
end
