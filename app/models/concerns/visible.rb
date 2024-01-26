module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived']

  included do

    belongs_to :category

    validates :status, inclusion: { in: VALID_STATUSES }
    validate do
      errors[:specification] << '请输入完整的尺寸数据'
    end

    # scope :public_count, -> { where(status: 'public').count }
    # Ex:- scope :active, -> {where(:active => true)}
    # class << self
      def self.public_count
        where(status: 'public').count
      end
    # end

    def public?
      status == 'public'
    end

  end

  # class_methods do
  #   def public_count
  #     where(status: 'public').count
  #   end
  # end


  def archived?
    status == 'archived'
  end
end
