class BanksSearch
  def initialize(banks, query)
    @banks = banks.any_of(
      { kanji_name: %r(#{query})i },
      { hiragana_name: %r(#{query})i },
    )
  end

  def method_missing(name, *args, &block)
    @banks.send(name, *args, &block)
  end
end
