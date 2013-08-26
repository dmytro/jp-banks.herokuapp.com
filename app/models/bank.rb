class Bank
  include Mongoid::Document
  include Mongoid::Timestamps

  field :code
  field :kanji_name
  field :hiragana_name

  embeds_many :branches

  validates :code, presence: true, uniqueness: true, numericality: true, length: { is: 4 }
  validates :kanji_name, presence: true
  validates :hiragana_name, presence: true

  index({ code: 1 }, { unique: true })
  index({ kanji_name: 1 })
  index({ hiragana_name: 1 })

  index('branches.code' => 1)
  index('branches.kanji_name' => 1)
  index('branches.hiragana_name' => 1)
end
