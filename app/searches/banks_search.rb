class BanksSearch
  def initialize(banks, query)
    @filtered = query.present? ? filter(banks, query) : banks
  end

  def method_missing(name, *args, &block)
    filtered.send(name, *args, &block)
  end

  private

  attr_accessor :filtered

  def filter(banks, query)
    banks.any_of(
      { kanji_name: %r(#{query})i },
      { hiragana_name: %r(#{query})i },
    )
  end
end
