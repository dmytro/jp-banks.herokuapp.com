class BranchesSearch
  def initialize(branches, query)
    @filtered = query.present? ? filter(branches, query) : branches
  end

  def method_missing(name, *args, &block)
    filtered.send(name, *args, &block)
  end

  private

  attr_accessor :filtered

  def filter(branches, query)
    branches.any_of(
      { kanji_name: %r(#{query})i },
      { hiragana_name: %r(#{query})i },
    )
  end
end
