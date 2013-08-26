class Branch
  include Mongoid::Document
  include Mongoid::Timestamps

  field :code
  field :kanji_name
  field :hiragana_name

  embedded_in :bank

  validates :code, presence: true, uniqueness: { scope: :bank }, numericality: true, length: { is: 3 }
  validates :kanji_name, presence: true
  validates :hiragana_name, presence: true
end
