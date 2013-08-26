class BankInfoFetcher
  include Sidekiq::Worker

  def perform(bank_code)
    hash = Downloader.new(bank_code).fetch
    parser = Parser.new(hash)

    info = parser.bank
    bank = Bank.find_or_initialize_by(code: info.code)
    succeeded = bank.update_attributes(
      kanji_name: info.kanji_name,
      hiragana_name: MojiUtil.to_hiragana(info.kana_name),
    )

    parser.branches.each do |info|
      branch = bank.branches.find_or_initialize_by(code: info.code)
      succeeded &&= branch.update_attributes(
        kanji_name: info.kanji_name,
        hiragana_name: MojiUtil.to_hiragana(info.kana_name),
      )
    end

    succeeded
  end

  class Downloader
    include HTTParty

    base_uri 'https://squareup.com/begin/api'
    format :json

    def initialize(bank_code)
      @bank_code = bank_code
    end

    def fetch
      @fetch ||= self.class.get('/jp/bank-branch', query: { bank_code: @bank_code }).parsed_response || {}
    end
  end

  class Parser
    def initialize(hash)
      @hash = OpenStruct.new(hash)
    end

    def bank
      @bank ||= OpenStruct.new(@hash.bank)
    end

    def branches
      @branches ||= @hash.branches.map { |b| OpenStruct.new(b) } rescue [OpenStruct.new]
    end
  end
end
