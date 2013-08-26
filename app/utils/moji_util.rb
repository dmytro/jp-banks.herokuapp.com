module MojiUtil
  extend self

  def to_hiragana(s)
    Moji.kata_to_hira(Moji.han_to_zen(s)) rescue nil
  end
end
