class BranchesSearch
  def initialize(branches, query)
    @branches = branches.any_of(
      { kanji_name: %r(#{query})i },
      { hiragana_name: %r(#{query})i },
    )
  end

  def method_missing(name, *args, &block)
    @branches.send(name, *args, &block)
  end
end
