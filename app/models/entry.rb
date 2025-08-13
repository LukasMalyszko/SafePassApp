class Entry < ApplicationRecord
  belongs_to :user

  validates :name, :username, :password, presence: true
  validate :url_must_be_valid

  encrypts :username, deterministic: true
  encrypts :password

  scope :search_name, lambda { |name|
    where('entries.name ILIKE ?', "%#{name}%") if name.present?
  }

  def self.search(name)
    search_name(name).order(:name)
  end

  private

  def url_must_be_valid
    return if url.include?('http' || 'https')

    errors.add(:url, 'is not valid')
  end
end
